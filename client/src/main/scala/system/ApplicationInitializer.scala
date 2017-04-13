package system

import model.SongReference
import org.scalajs.dom
import presenter.SongListPresenter

import scala.scalajs.js
import scala.scalajs.js.annotation.JSExport

@JSExport
object ApplicationInitializer {

  @JSExport
  def main(songs: js.Array[SongReference]): Unit = {
    val content = dom.document.getElementById("content");
    val songDetailContainer = dom.document.createElement("div");
    songDetailContainer.setAttribute("id", "songDetailContainer");
    songDetailContainer.classList.add("material");

    val songList = new SongListPresenter(songs);
    content.appendChild(songList.render());
    content.appendChild(songDetailContainer);

    EventBus.addEventListener(EventType.VIEW_SONG, handleViewSong)
    EventBus.addEventListener(EventType.CREATE_SONG, handleCreateSong)
  }

  def handleViewSong(e: Event): Unit = {
    //TODO
  }

  def handleCreateSong(e: Event): Unit = {
    //TODO
  }
}