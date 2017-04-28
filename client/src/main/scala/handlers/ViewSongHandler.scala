package handlers

import org.scalajs.dom.Node
import presenter.SongDetailPresenter
import system.Events.ViewSongEvent

class ViewSongHandler(songDetailContainer: Node) {
  def handle(e: ViewSongEvent): Unit = {
    new SongDetailPresenter(e.song, songDetailContainer).render()
  }
}
