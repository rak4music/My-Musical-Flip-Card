package presenter

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.Node
import system.{Event, EventBus, EventType}

class SongReferencePresenter(reference: SongReference) {
  var selected = false

  def render(): Node = {
    var listItem = dom.document.createElement("li");
    listItem.addEventListener("click", (e: dom.Event) => {
      var event = new Event(EventType.VIEW_SONG, reference);
      EventBus.dispatchEvent(event);
    })
    listItem.setAttribute("className", if(this.selected) "selected" else "");
    listItem.innerHTML = reference.title;
    return listItem;
  }
}
