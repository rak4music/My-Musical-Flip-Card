package handlers

import model.SongReference
import org.scalajs.dom
import system.EventBus
import system.Events.{CreateSongEvent, EditSongEvent}

import scala.scalajs.js

class CreateSongHandler {
  def handle(event: CreateSongEvent): Unit = {
    //EventBus.dispatchEvent(EditSongEvent(new SongReference("id", "title", "href")))
    val song = js.Dictionary("title" -> event.title,
                   "artist" -> "",
                   "timing_upper" -> 4,
                   "timing_lower" -> 4,
                   "key" -> "",
                   "duration" -> 180 )
    val json = song.
    dom.window.alert(json)
  }
}
