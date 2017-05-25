package presenter

import model.{JsSongDetail, SongReference}
import org.scalajs.dom
import org.scalajs.dom.Node
import org.scalajs.dom.ext.KeyCode
import org.scalajs.dom.raw._
import view.NoteTimeline

class SongEditPresenter(val song: SongReference, val contentPane: Node) extends SongPresenter {

  var songDetail: JsSongDetail = null

  def render() {
    this.reset()
    this.fetchSong(song, renderDetail)
  }

  def createSongDetail(songDetailNode: Element, detail: JsSongDetail) {
    val input = dom.document.createElement("input").asInstanceOf[HTMLInputElement]
    input.setAttribute("id","lyricsInput")
    input.setAttribute("type","text")
    val lyricsWrapper = dom.document.createElement("div")
    lyricsWrapper.setAttribute("id","lyricsWrapper")
    lyricsWrapper.appendChild(input)
    createNoteTimeline(songDetailNode)
    songDetailNode.appendChild(lyricsWrapper)
    input.addEventListener("blur", (event: FocusEvent) => {
      if(!input.value.isEmpty) {
        val lyricsText = dom.document.createElement("div")
        lyricsText.setAttribute("id", "lyricsText")
        lyricsText.innerHTML = input.value
        lyricsWrapper.replaceChild(lyricsText, input)
      }
    })
  }

  def renderDetail(detail: JsSongDetail): Unit = {
    val songDetailNode = dom.document.createElement("div")
    songDetailNode.setAttribute("id","songEditor")
    createSongDetail(songDetailNode, detail)
    contentPane.appendChild(songDetailNode)
  }

  def createNoteTimeline(songDetailNode: Element) = {
    val INDICATOR_OFFSET = 5
    val noteAddIndicator = dom.document.createElement("div")
    noteAddIndicator.setAttribute("id", "noteAddIndicator")
    noteAddIndicator.classList.add("hidden")
    songDetailNode.appendChild(noteAddIndicator)

    val lineContainer = dom.document.createElement("div")
    lineContainer.setAttribute("id","noteTimelineContainer")
    lineContainer.innerHTML = "&nbsp;"
    songDetailNode.appendChild(lineContainer)

    val line = dom.document.createElement("div")
    line.setAttribute("id","noteTimeline")
    lineContainer.appendChild(line)

    lineContainer.addEventListener("mousemove", (event: dom.MouseEvent) => {
      noteAddIndicator.asInstanceOf[HTMLElement].style.left = (event.pageX - INDICATOR_OFFSET) + "px"
    })
    lineContainer.addEventListener("mouseenter", (event: dom.MouseEvent) => {
      noteAddIndicator.classList.remove("hidden")
    })
    lineContainer.addEventListener("mouseleave", (event: dom.MouseEvent) => {
      noteAddIndicator.classList.add("hidden")
    })
    lineContainer.addEventListener("click", (event: dom.MouseEvent) => {
      val noteInput = createNoteInput(event.pageX - INDICATOR_OFFSET, event.pageY, (noteText: HTMLElement) => {
        lineContainer.appendChild(noteText)
        noteText.style.left = event.pageX - INDICATOR_OFFSET + "px"
      })
      lineContainer.appendChild(noteInput)
      noteInput.asInstanceOf[HTMLInputElement].focus()
    })
  }

  var noteInput: HTMLInputElement = null
  def createNoteInput(x: Double, y: Double, noteTextConsumer: HTMLElement => Unit) = {
    noteInput = dom.document.createElement("input").asInstanceOf[HTMLInputElement]
    noteInput.setAttribute("id","noteInput")
    noteInput.setAttribute("type", "text")
    val style = noteInput.asInstanceOf[HTMLElement].style
    style.left = x + "px"
    noteInput.addEventListener("click", (event: dom.MouseEvent) => event.stopPropagation())
    noteInput.addEventListener("keyup", (event: dom.KeyboardEvent) => {
      if(event.keyCode == KeyCode.Enter) {
        noteInput.blur()
      }
      val style = dom.window.getComputedStyle(noteInput)
      val fontSize = style.fontSize.replace("px","").toInt
      val newWidth = (fontSize / 2) * noteInput.value.size
      noteInput.style.width = newWidth + 30 + "px"
    })
    noteInput.addEventListener("blur", (event: FocusEvent) => {
      if(!noteInput.value.isEmpty) {
        createNoteText(noteInput.value, x, y, noteTextConsumer)
      }
      noteInput.parentNode.removeChild(noteInput)
    })
    noteInput
  }

  def createNoteText(note: String, x: Double, y: Double, noteTextConsumer: HTMLElement => Unit): Unit = {
    val noteText = dom.document.createElement("div").asInstanceOf[HTMLElement]
    noteText.setAttribute("class", "noteText")
    noteText.innerHTML = note
    noteTextConsumer(noteText)
  }
}
