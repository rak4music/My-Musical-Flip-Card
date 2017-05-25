package presenter

import model.SongReference
import org.scalajs.dom
import org.scalajs.dom.{Event, Node}
import system.EventBus
import system.Events.{EditSongEvent, ViewSongEvent}

class SongReferencePresenter(reference: SongReference) {
  var selected = false

  def render(): Node = {
    val listItem = dom.document.createElement("li")
    listItem.addEventListener("click", (e: dom.Event) => {
      EventBus.dispatchEvent(ViewSongEvent(reference))
    })
    listItem.setAttribute("className", if(this.selected) "selected" else "")
    val text = dom.document.createElement("span")
    text.innerHTML = reference.title
    listItem.appendChild(text)

    val image = dom.document.createElement("img")
    image.setAttribute("class", "editSongReferenceIcon")
    image.setAttribute("src", "/assets/images/edit_icon.png")
    image.setAttribute("height", "16")
    image.setAttribute("width","16")
    image.addEventListener("click", (event: Event) => {
      event.stopPropagation()
      EventBus.dispatchEvent(EditSongEvent(reference))
    })
    listItem.appendChild(image)

    return listItem
  }
}
