package controllers
import anorm._
import com.google.inject.Inject
import play.api.db.DBApi
import play.api.libs.json.Json
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
      Ok(lines)
    }
  }
}