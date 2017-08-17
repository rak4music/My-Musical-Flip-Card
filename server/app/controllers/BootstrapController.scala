package controllers

import javax.inject.Inject

import anorm.{Row, SQL}
import play.api.db.DBApi
import play.api.libs.json.{JsObject, Json}
import play.api.mvc._

class BootstrapController@Inject()(dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  def init() = Action { implicit request =>
    Ok(views.html.app.render(createSongListJson().toString,
                             routes.SongWriteController.stub().absoluteURL()))
  }

  def createSongListJson()(implicit request: Request[AnyContent]) = {
    db.withConnection { implicit c =>
      val songs = Json.arr(SQL("select * from songs")().map { row =>
        rowToSongRefererence(row)
      })
      Json.toJson(songs)
    }
  }

  private def rowToSongRefererence(row: Row)(implicit request: RequestHeader) = {
    val id = row[Int]("id")
    Json.obj(
      "id" -> id,
      "title" -> row[String]("title"),
      "href" -> routes.SongReadController.show(id).absoluteURL()
    )
  }
}
