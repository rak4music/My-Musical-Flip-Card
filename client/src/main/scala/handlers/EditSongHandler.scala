package handlers

import org.scalajs.dom.Node
import presenter.SongEditPresenter
import system.Events.EditSongEvent

class EditSongHandler(val songDetailContainer: Node) {
  def handle(event: EditSongEvent): Unit = {
    new SongEditPresenter(event.song, songDetailContainer).render()
  }
}
