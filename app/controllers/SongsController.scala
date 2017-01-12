package controllers

import java.io.{FileInputStream, FileOutputStream}
import javax.inject.Inject

import anorm._
import jm.util.Read
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc._
import java.io.File

import jm.music.data.Score
class SongsController @Inject() (dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")
  
  def view() = Action { implicit request =>
    Ok(views.html.songs.render(createSongListJson().toString))
  }

  def show(id: Int) = Action {
    db.withConnection { implicit c =>
      val songs = SQL("select * from scores where id = {id}").on("id" -> id)().map { row =>
        scoreRowToSong(row)
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

  private def scoreRowToSong(row: Row) = {
    val title = row[String]("title")
    val artist = row[String]("artist")
    val bytes = row[Array[Byte]]("file")
    val file = new File(title)
    val stream = new FileOutputStream(file)
    stream.write(bytes)
    val score = new Score()
    Read.jm(score,title)
    Json.obj(
      "id" -> row[Int]("id"),
      "title" -> title,
      "artist" -> artist,
      "timing" -> Json.obj(
        "upper"-> score.getNumerator,
        "lower" -> score.getDenominator
      ),
      "key" -> score.getKeySignature
    )
    file.delete()
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