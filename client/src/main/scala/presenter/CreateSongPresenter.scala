package presenter

import org.scalajs.dom
import org.scalajs.dom.KeyboardEvent
import org.scalajs.dom.raw.HTMLInputElement
import system.EventBus
import system.Events.CreateSongEvent

class CreateSongPresenter {
  var selected = false
  var input:HTMLInputElement = null
  def render(): dom.Node = {
    input = dom.document.createElement("input").asInstanceOf[HTMLInputElement]
    input.setAttribute("type","text")
    input.addEventListener("keypress", (e:dom.KeyboardEvent) => onKeyPress(e,input))
    val li = dom.document.createElement("li")
    li.appendChild(input)
    li
  }
  def onKeyPress(e: KeyboardEvent, input:HTMLInputElement){
    val key=e.keyCode
    if(key==13){
      val event=new CreateSongEvent(input.value)
      EventBus.dispatchEvent(event)
    }
  }

  def setFocus(): Unit ={
    input.focus()
  }
}
