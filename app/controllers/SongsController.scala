package controllers

import javax.inject.Inject

import models.{Phrase, Song, Timing}
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller}
import anorm._
import play.api.db.DBApi

class SongsController @Inject() (dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  implicit val timingWrites = Json.writes[Timing]
  implicit val phraseWrites = Json.writes[Phrase]
  implicit val songWrites = Json.writes[Song]

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

  def list() = Action {
    db.withConnection { implicit c =>
      val songs = SQL("select * from songs")().map { row =>
        Song(row[Int]("id"), row[String]("title"), row[String]("author"), Timing(row[Int]("timing_upper"), row[Int]("timing_lower")), row[String]("key"), List())
      }
      Ok(Json.toJson(songs))
    }
  }
  private def rowToSong(row: Row) = {
    Song(row[Int]("id"), row[String]("title"), row[String]("author"), Timing(row[Int]("timing_upper"), row[Int]("timing_lower")), row[String]("key"), List())
  }
}