package system

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.html
import presenter.SongListPresenter

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
    EventHandlerRegistry.init(songDetailContainer)
  }
}