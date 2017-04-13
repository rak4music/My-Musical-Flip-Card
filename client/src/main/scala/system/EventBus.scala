package system

import model.SongReference

import scala.collection.mutable
import scala.collection.mutable.ListBuffer

object EventBus {
  val eventListeners = new mutable.HashMap[String, ListBuffer[(Event) => Unit]]()

  def addEventListener(eventType:String, listener: (Event) => Unit): Unit = {
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
    eventListeners.get(event.eventType) match {
      case Some(list) => {
        list.foreach { listener =>
          listener(event)
        }
      }
    }
  }
}

object EventType {
  val VIEW_SONG = "viewSong"
  val CREATE_SONG = "createSong"
}

case class Event(val eventType: String, val song: SongReference)