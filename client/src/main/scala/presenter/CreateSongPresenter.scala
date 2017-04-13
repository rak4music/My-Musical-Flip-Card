package presenter

import org.scalajs.dom

class CreateSongPresenter {
  var songCreateHandler: (String) => Unit = null
  var selected = false
  def render(): dom.Node = {
    val input = dom.document.createElement("input")
    input.setAttribute("type","text")
    //input.addEventListener("keypress", (e) => this.onKeyPress(e,song))
    val li = dom.document.createElement("li")
    li.appendChild(input)
    li
  }

  def setSongCreateHandler(handler: (String) => Unit): Unit = {
    songCreateHandler = handler;
  }
}
