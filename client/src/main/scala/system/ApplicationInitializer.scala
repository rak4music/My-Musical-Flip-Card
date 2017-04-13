package system

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.html
import presenter.SongListPresenter
import system.Events.Event

import scala.scalajs.js
import scala.scalajs.js.annotation.JSExport

@JSExport
object ApplicationInitializer {

  @JSExport
  def init(songs: js.Array[SongReference], contentPane: html.Div): Unit = {
    val songDetailContainer = dom.document.createElement("div");
    songDetailContainer.setAttribute("id", "songDetailContainer");
    songDetailContainer.classList.add("material");

    val songList = new SongListPresenter(songs);
    contentPane.appendChild(songList.render());
    contentPane.appendChild(songDetailContainer);

    EventBus.addEventListener(Events.VIEW_SONG, handleViewSong)
    EventBus.addEventListener(Events.CREATE_SONG, handleCreateSong)
  }

  def handleViewSong(e: Event): Unit = {
    //TODO
  }

  def handleCreateSong(e: Event): Unit = {
    //TODO
  }
}