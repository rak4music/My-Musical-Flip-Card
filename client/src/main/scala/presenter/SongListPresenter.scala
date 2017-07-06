package presenter

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.Node
import system.Events.CreateSongEvent
import system.{EventBus, Events}

import scala.scalajs.js

class SongListPresenter(songs: js.Array[SongReference]) {
  def render(): Node = {
    val songList = dom.document.createElement("ul")
    songList.setAttribute("id", "songList")
    songList.classList.add("material")
    val addButton = dom.document.createElement("div")
    addButton.innerHTML ="+"
    addButton.classList.add("addButton")
    addButton.classList.add("material")
    addButton.addEventListener("click", (e: dom.Event) => {
      val createSongPresenter = new CreateSongPresenter()
      val createSongNode = createSongPresenter.render()
      def createSongHandler(event:CreateSongEvent): Unit={
        EventBus.removeEventListener(Events.CREATE_SONG, createSongHandler)
        songList.removeChild(createSongNode)
        //TODO: Replace the nulls below once we're persisting the song
        songList.appendChild(new SongReferencePresenter(new SongReference(null, event.title, null, true)).render())
      }
      EventBus.addEventListener(Events.CREATE_SONG, createSongHandler)
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
