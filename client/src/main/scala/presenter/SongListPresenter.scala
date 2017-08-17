package presenter

import global.Flip
import model.{JsSongDetail, SongReference}
import org.scalajs.dom
import org.scalajs.dom.{Event, Node, XMLHttpRequest}
import org.scalajs.dom.raw.{Element, HTMLDivElement, HTMLElement}

import scala.scalajs.js
import scala.scalajs.js.JSON

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

  def persistSong(title: String): Unit = {
    val xhr = new XMLHttpRequest()
    xhr.open("POST", Flip.rootModel.stubURL)
    xhr.setRequestHeader("Content-Type","application/json")
    xhr.onload = (e: Event) => {
      val text = xhr.responseText
      val detail:SongReference = JSON.parse(xhr.responseText).asInstanceOf[SongReference]
      songList.appendChild(new SongReferencePresenter(new SongReference(detail.id, title, detail.href, true)).render())
    }
    xhr.send(s"""{"title":"${title}"}""");
  }

  def handle(title: String): Unit = {
    if(songList.asInstanceOf[HTMLDivElement].contains(createSongNode.asInstanceOf[HTMLElement])){
      songList.removeChild(createSongNode)
    }
    persistSong(title)
  }

}