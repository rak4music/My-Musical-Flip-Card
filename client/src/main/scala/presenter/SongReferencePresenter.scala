package presenter

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.Node
import system.EventBus
import system.Events.ViewSongEvent

class SongReferencePresenter(reference: SongReference) {
  var selected = false

  def render(): Node = {
    var listItem = dom.document.createElement("li")
    listItem.addEventListener("click", (e: dom.Event) => {
      EventBus.dispatchEvent(ViewSongEvent(reference))
    })
    listItem.setAttribute("className", if(this.selected) "selected" else "")
    listItem.innerHTML = reference.title
    return listItem
  }
}
