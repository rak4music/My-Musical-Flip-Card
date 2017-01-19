package controllers
import anorm._
import com.google.inject.Inject
import play.api.db.DBApi
import play.api.libs.json.{JsObject, Json}
import play.api.mvc.{Action, Controller}

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

  def create() = Action { request =>
    request.body.asJson.map { json =>
      val timing =  (json \ "timing").as[JsObject]
      db.withConnection { implicit c =>
        SQL("insert into songs (title, artist, timing_upper, timing_lower, key, duration) values({title}, {artist}, {timing_upper}, {timing_lower}, {key}, {duration})").on(
          'title -> (json \ "title").as[String],
          'artist -> (json \ "artist").as[String],
          'timing_upper -> (timing \ "upper").as[Int],
          'timing_lower -> (timing \ "lower").as[Int],
          'key -> (json \ "key").as[String],
          'duration -> (json \ "duration").as[Float]).executeUpdate()
      }
    }
    Ok("")
  }
}