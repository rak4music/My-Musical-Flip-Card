package handlers

import model.{JsSongDetail, SongReference}
import org.scalajs.dom
import org.scalajs.dom.Node
import presenter.SongEditPresenter
import system.EventBus
import system.Events.{CreateSongEvent, EditSongEvent}

import scala.scalajs.js
import scala.scalajs.js.JSON

class CreateSongHandler(songDetailContainer: Node) {
  def handle(event: CreateSongEvent): Unit = {
    //EventBus.dispatchEvent(EditSongEvent(new SongReference("id", "title", "href")))
    val json = """{"title":"$event.title"}"""
//    val song = js.Dictionary("title" -> event.title,
//                   "artist" -> "",
//                   "timing_upper" -> 4,
//                   "timing_lower" -> 4,
//                   "key" -> "",
//                   "duration" -> 180 )
    val detail:JsSongDetail = JSON.parse(json).asInstanceOf[JsSongDetail]
    val reference = new SongReference("", event.title, "", true)
    new SongEditPresenter(reference, songDetailContainer).render(detail)
  }
}
