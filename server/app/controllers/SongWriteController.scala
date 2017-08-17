package controllers
import java.sql.Connection

import anorm._
import com.google.inject.Inject
import play.api.db.DBApi
import play.api.libs.functional.syntax._
import play.api.libs.json.Reads._
import play.api.libs.json._
import play.api.mvc.{Action, Controller}

class SongWriteController @Inject()(dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  case class Phrase(bars: Option[Float], note: Option[String], repeat: Option[Int], lyric: Option[String])

  implicit val phraseReads: Reads[Phrase] = (
      (JsPath \ "bars").readNullable[Float] and
      (JsPath \ "note").readNullable[String] and
      (JsPath \ "repeat").readNullable[Int] and
      (JsPath \ "lyric").readNullable[String]
  )(Phrase.apply _)

  def update(id:Int) = Action { request =>
    request.body.asJson.foreach { json =>
      val timing =  (json \ "timing").as[JsObject]
      db.withConnection { implicit c =>
        SQL("update songs set title={title}, artist={artist}, timing_upper={timing_upper}, timing_lower={timing_lower}, key={key}, duration={duration} where id={id}").on(
          'title -> (json \ "title").as[String],
          'artist -> (json \ "artist").as[String],
          'timing_upper -> (timing \ "upper").as[Int],
          'timing_lower -> (timing \ "lower").as[Int],
          'key -> (json \ "key").as[String],
          'duration -> (json \ "duration").as[Float],
          'id -> id
        ).executeUpdate()
        SQL("delete from phrases where song_id={song_id}").on(
          'song_id -> id
        ).executeUpdate()
        createPhrases(Some(id), json)
      }
    }
    Ok("")
  }

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

        createPhrases(newSongId, json)
      }
    }
    Ok("")
  }

  def stub() = Action { implicit request =>
    var newSongId: Option[Long] = null
    val json = request.body.asJson match {
      case Some(json) => {
        db.withConnection { implicit c =>
          val title = (json \ "title").as[String]
          newSongId = SQL("insert into songs (title) values({title})").on('title -> title).executeInsert()
        }
      }
    }
    Ok(Json.obj(
      "id"->newSongId.toString,
      "href"->routes.SongReadController.show(newSongId.get.toInt).absoluteURL(),
      "isNew"->true
    ))
  }

  def createPhrases(id:Option[Long],json:JsValue)(implicit c:Connection){
    (json \ "phrases").as[JsArray].value.foreach { jsonPhrase =>
      jsonPhrase.validate[Phrase](phraseReads) match {
        case s: JsSuccess[Phrase] => {
          val phrase = s.get
          SQL("insert into phrases (song_id, bars, note, repeat, lyric) values({song_id}, {bars}, {note}, {repeat}, {lyric})").on(
            'song_id -> id,
            'bars -> phrase.bars,
            'note -> phrase.note,
            'repeat -> phrase.repeat,
            'lyric -> phrase.lyric).executeInsert()
        }
        case e: JsError => println(JsError.toJson(e).toString())
      }
    }
  }

  def delete(id: Int) = Action {
    db.withConnection { implicit c =>
      SQL("delete from songs where id = {id}").on(
        'id -> id
      ).executeUpdate()
      SQL("delete from phrases where song_id = {id}").on(
        'id -> id
      ).executeUpdate()
    }
    Ok("")
  }
}