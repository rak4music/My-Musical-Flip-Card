package presenter

import org.scalajs.dom
import org.scalajs.dom.KeyboardEvent
import org.scalajs.dom.raw.HTMLInputElement

class CreateSongPresenter {
  var selected = false
  var input:HTMLInputElement = null
  var handler: String => Unit = null
  def render(): dom.Node = {
    input = dom.document.createElement("input").asInstanceOf[HTMLInputElement]
    input.setAttribute("type","text")
    input.addEventListener("keypress", (e:dom.KeyboardEvent) => onKeyPress(e,input))
    val li = dom.document.createElement("li")
    li.classList.add("editableSong")
    li.appendChild(input)
    li
  }

  def validate(value: String): Boolean = {
    value != null && !value.isEmpty
  }

  def onKeyPress(e: KeyboardEvent, input:HTMLInputElement){
    val key=e.keyCode
    if(key==13){
      val valid = validate(input.value)
      if(valid){
        handler(input.value)
      }else{
        input.classList.add("error")
      }
    }
  }

  def setFocus(): Unit ={
    input.focus()
  }
  def setSongCreatedHandler(handler: String => Unit) {
    this.handler = handler
  }
}
