package controllers

import javax.inject.Inject

import anorm._
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc._

class SongsController @Inject() (dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")
  
  def view() = Action { implicit request =>
    Ok(views.html.songs.render(createSongListJson().toString))
  }

  def show(id: Int) = Action {
    db.withConnection { implicit c =>
      val songs = SQL("select * from songs where id = {id}").on("id" -> id)().map { row =>
        rowToSong(row)
      }
      if(songs.size > 0) {
        Ok(Json.toJson(songs(0)))
      }else NotFound("Song doesn't exist")
    }
  }

  def list() = Action { implicit request =>
    Ok(createSongListJson())
  }

  def createSongListJson()(implicit request: Request[AnyContent]) = {
    db.withConnection { implicit c =>
      val songs = Json.arr(SQL("select * from songs")().map { row =>
        rowToSongRefererence(row)
      })
      Json.toJson(songs)
    }
  }

  private def rowToSong(row: Row) = {
    Json.obj(
      "id" -> row[Int]("id"),
      "title" -> row[String]("title"),
      "author" -> row[String]("author"),
      "timing" -> Json.obj(
        "upper"-> row[Int]("timing_upper"),
        "lower" -> row[Int]("timing_lower")
      ),
      "key" -> row[String]("key")
    )
  }
  private def rowToSongRefererence(row: Row)(implicit request: RequestHeader) = {
    val id = row[Int]("id")
    Json.obj(
      "id" -> id,
      "title" -> row[String]("title"),
      "href" -> routes.SongsController.show(id).absoluteURL()
    )
  }
}