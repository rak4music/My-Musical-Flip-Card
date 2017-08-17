package presenter

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.Node
import org.scalajs.dom.raw.{Element, HTMLDivElement, HTMLElement}

import scala.scalajs.js

class SongListPresenter(songs: js.Array[SongReference]) {
  def render(): Node = {
    val songList: Element = dom.document.createElement("ul")
    songList.setAttribute("id", "songList")
    songList.classList.add("material")
    val addButton = dom.document.createElement("div")
    addButton.innerHTML ="+"
    addButton.classList.add("addButton")
    addButton.classList.add("material")
    addButton.addEventListener("click", (e: dom.Event) => {
      val createSongPresenter = new CreateSongPresenter()
      val createSongNode = createSongPresenter.render()
      val handler = new SongCreatedHandler(createSongNode, songList)
      createSongPresenter.setSongCreatedHandler(handler.handle)
      songList.appendChild(createSongNode)
      createSongPresenter setFocus()
    })
    songList.appendChild(addButton)
    this.songs.map((songReference: SongReference) => {
      songList.appendChild(new SongReferencePresenter(songReference).render())
    })
    return songList
  }

}
class SongCreatedHandler (createSongNode: Node, songList: Element){
  def handle(title: String): Unit = {
    if(songList.asInstanceOf[HTMLDivElement].contains(createSongNode.asInstanceOf[HTMLElement])){
      songList.removeChild(createSongNode)
    }
    //TODO: Replace the nulls below once we're persisting the song
    songList.appendChild(new SongReferencePresenter(new SongReference(null, title, null, true)).render())
  }

}