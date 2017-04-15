package system

import handlers.{CreateSongHandler, ViewSongHandler}
import org.scalajs.dom.Node

object EventHandlerRegistry {
  def init(songDetailContainer: Node): Unit = {
    EventBus.addEventListener(Events.VIEW_SONG, new ViewSongHandler(songDetailContainer).handle)
    EventBus.addEventListener(Events.CREATE_SONG, new CreateSongHandler().handle)
  }
}
