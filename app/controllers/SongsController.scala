package controllers

import javax.inject.Inject

import models.{Phrase, Song, Timing}
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller}

class SongsController @Inject() (dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  private val songs: List[Song] = List(Song("1", "Over Now", "Alice in Chains", Timing(4,4), "F# Major", List()),
                                       Song("2", "Billy Jean", "Michael Jackson", Timing(4,4), "F# Minor", List()))

  implicit val timingWrites = Json.writes[Timing]
  implicit val phraseWrites = Json.writes[Phrase]
  implicit val songWrites = Json.writes[Song]

  def show(id: String) = Action {
    var result: Song = null
    for (song <- songs) {
      if (song.id == id) {
        result = song
      }
    }
    Ok(Json.toJson(result))
  }

  def list() = Action {
//    db.withConnection { implicit c =>
//      val query = SQL("select * from test")().map { row =>
//        row[String]("foo")
//      }
//      Ok(query(0) + ", " + query(1))
//    }
    Ok(Json.toJson(songs))
  }
}