package controllers

import javax.inject.Inject

import anorm._
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc._
class SongReadController @Inject()(dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")
  
  def view() = Action { implicit request =>
    Ok(views.html.songs.render(createSongListJson().toString))
  }

  def show(id: Int) = Action {
    db.withConnection { implicit c =>
      val songs = SQL("select * from songs where id = {id}").on("id" -> id)().map { song =>
        val phrases = SQL("select * from phrases where song_id = {song_id}").on('song_id -> id)()
        rowToSong(song, phrases)
      }
      if(songs.size > 0) {
        Ok(Json.prettyPrint(songs(0)))
      }else NotFound("Song doesn't exist")
    }
  }

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

  private def rowToSong(row: Row, phrases: Seq[Row]) = {
    Json.obj(
      "id" -> row[Int]("id"),
      "title" -> row[String]("title"),
      "artist" -> row[String]("artist"),
      "timing" -> Json.obj(
        "upper"-> row[Int]("timing_upper"),
        "lower" -> row[Int]("timing_lower")
      ),
      "key" -> row[String]("key"),
      "duration" -> row[Double]("duration"),
      "phrases" -> phrases.map {phrase =>
        Json.obj(
          "id" -> phrase[Int]("id"),
          "bars" -> phrase[Option[Double]]("bars"),
          "note" -> phrase[Option[String]]("note"),
          "repeat" -> phrase[Option[Int]]("repeat"),
          "lyric" -> phrase[Option[String]]("lyric")
        )
      }
    )
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