package controllers

import models.{Phrase, Song, Timing}
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller}

class SongsController extends Controller {
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
    Ok(Json.toJson(songs))
  }
}