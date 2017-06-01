package system

import model.SongReference
import system.Events.Event

import scala.collection.mutable
import scala.collection.mutable.ListBuffer

object EventBus {

  private def eventListenerMaker(): mutable.HashMap[Symbol, ListBuffer[(Event) => Unit]] = { //Allows us to define a type where a val wouldn't
    new mutable.HashMap[Symbol, ListBuffer[(Event) => Unit]]()
  }
  private val eventListeners = eventListenerMaker()

  def addEventListener[T <: Event](id:Symbol, listener: (T) => Unit): Unit = {
    if(!eventListeners.contains(id)) {
      eventListeners += id -> ListBuffer()
    }
    val eventTypeListeners = eventListeners.get(id).get
    val isDuplicate = eventTypeListeners.exists(l => l == listener)
    if(!isDuplicate) {
      eventTypeListeners += listener.asInstanceOf[(Event) => Unit]
    }
  }

  def dispatchEvent(event:Event): Unit = {
    eventListeners.get(event.id) match {
      case Some(list) => {
        list.foreach { listener =>
          listener(event)
        }
      }
      case None => throw new RuntimeException(s"""No handler found for event of type ${event.id}""")
    }
  }
}

object Events {
  sealed abstract class Event(val id: Symbol)
  val VIEW_SONG = 'viewSong
  val CREATE_SONG = 'createSong
  val EDIT_SONG = 'editSong
  case class ViewSongEvent(val song: SongReference) extends Event(VIEW_SONG)
  case class CreateSongEvent(val title:String) extends Event(CREATE_SONG)
  case class EditSongEvent(val song: SongReference) extends Event(EDIT_SONG);
}