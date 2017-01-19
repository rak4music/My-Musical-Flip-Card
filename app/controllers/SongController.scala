package controllers
import play.api.libs.json.Reads._
import play.api.libs.json._
import anorm._
import com.google.inject.Inject
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller}
import play.api.libs.functional.syntax._

class SongController @Inject()(dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  def rowToLine(row: Row) = {
   Json.obj(
     "id" -> row[Int]("id")
   )

  }

  def lines(id: Int) = Action {
    db.withConnection{implicit c =>
      val lines = SQL("select * from lines where song_id = {id}").on("id"->id)().map { row =>
        rowToLine(row)
      }
      Ok(Json.toJson(lines))
    }
  }

  case class Phrase(bars: Option[Float], note: Option[String], repeat: Option[Int], lyric: Option[String])

  implicit val phraseReads: Reads[Phrase] = (
      (JsPath \ "bars").readNullable[Float] and
      (JsPath \ "note").readNullable[String] and
      (JsPath \ "repeat").readNullable[Int] and
      (JsPath \ "lyric").readNullable[String]
  )(Phrase.apply _)

  def create() = Action { request =>
    request.body.asJson.foreach { json =>
      val timing =  (json \ "timing").as[JsObject]
      db.withConnection { implicit c =>

        val newSongId = SQL("insert into songs (title, artist, timing_upper, timing_lower, key, duration) values({title}, {artist}, {timing_upper}, {timing_lower}, {key}, {duration})").on(
          'title -> (json \ "title").as[String],
          'artist -> (json \ "artist").as[String],
          'timing_upper -> (timing \ "upper").as[Int],
          'timing_lower -> (timing \ "lower").as[Int],
          'key -> (json \ "key").as[String],
          'duration -> (json \ "duration").as[Float]).executeInsert()

        (json \ "phrases").as[JsArray].value.foreach { jsonPhrase =>
          jsonPhrase.validate[Phrase](phraseReads) match {
            case s: JsSuccess[Phrase] => {
              val phrase = s.get
              SQL("insert into phrases (song_id, bars, note, repeat, lyric) values({song_id}, {bars}, {note}, {repeat}, {lyric})").on(
                'song_id -> newSongId,
                'bars -> phrase.bars,
                'note -> phrase.note,
                'repeat -> phrase.repeat,
                'lyric -> phrase.lyric).executeInsert()
            }
            case e: JsError => println(JsError.toJson(e).toString())
          }
        }
      }
    }
    Ok("")
  }
}