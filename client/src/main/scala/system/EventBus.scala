package system

import model.SongReference
import system.Events.Event

import scala.collection.mutable
import scala.collection.mutable.ListBuffer

object EventBus {
  val eventListeners = new mutable.HashMap[Symbol, ListBuffer[(Event) => Unit]]()

  def addEventListener(eventType:Symbol, listener: (Event) => Unit): Unit = {
    if(!eventListeners.contains(eventType)) {
      eventListeners += eventType -> ListBuffer()
    }
    val eventTypeListeners = eventListeners.get(eventType).get
    val isDuplicate = eventTypeListeners.exists(l => l == listener)
    if(!isDuplicate) {
     eventTypeListeners += listener
    }
  }

  def dispatchEvent(event:Event): Unit = {
    eventListeners.get(event.id) match {
      case Some(list) => {
        list.foreach { listener =>
          listener(event)
        }
      }
    }
  }
}

object Events {
  sealed abstract class Event(val id: Symbol)
  val VIEW_SONG = 'viewSong
  val CREATE_SONG = 'createSong
  case class ViewSongEvent(val song: SongReference) extends Event(VIEW_SONG)
  case class CreateSongEvent() extends Event(CREATE_SONG)
}