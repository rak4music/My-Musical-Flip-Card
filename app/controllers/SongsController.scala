package controllers

import javax.inject.Inject

import anorm._
import models.{Phrase, Song, SongReference, Timing}
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller, RequestHeader}

class SongsController @Inject() (dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  implicit val timingWrites = Json.writes[Timing]
  implicit val phraseWrites = Json.writes[Phrase]
  implicit val songWrites = Json.writes[Song]
  implicit  val songReferenceWrites = Json.writes[SongReference]

  def show(id: Int) = Action {
    db.withConnection { implicit c =>
      val songs = SQL("select * from songs where id = {id}").on("id" -> id)().map { row =>
        rowToSong(row)
      }
      if(songs.size > 0) {
        Ok(Json.toJson(songs(0)))
      }else{
        NotFound("Song doesn't exist")
      }
    }
  }

  def list() = Action { implicit request =>
    db.withConnection { implicit c =>
      val songs = SQL("select * from songs")().map { row =>
        rowToSongRefereremce(row)
      }
      Ok(Json.toJson(songs))
    }
  }
  private def rowToSong(row: Row) = {
    Song(row[Int]("id"), row[String]("title"), row[String]("author"), Timing(row[Int]("timing_upper"), row[Int]("timing_lower")), row[String]("key"), List())
  }
  private def rowToSongRefereremce(row: Row)(implicit request: RequestHeader) = {
    val id = row[Int]("id")
    SongReference(id, row[String]("title"), routes.SongsController.show(id).absoluteURL())
  }
}