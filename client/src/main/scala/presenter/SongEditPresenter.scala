package presenter

import model.{JsSongDetail, SongReference}
import org.scalajs.dom
import org.scalajs.dom.Node
import org.scalajs.dom.raw.Element

class SongEditPresenter(val song: SongReference, val contentPane: Node) extends SongPresenter {

  var songDetail: JsSongDetail = null

  def render() {
    this.reset()
    this.fetchSong(song, renderDetail)
  }

  def createSongDetail(songDetailNode: Element, detail: JsSongDetail) {
    val input = dom.document.createElement("input")
    input.setAttribute("id","lyricsInput")
    input.setAttribute("type","text")
    val inputWrapper = dom.document.createElement("div")
    inputWrapper.setAttribute("id","lyricsInputWrapper")
    inputWrapper.appendChild(input)
    createNoteTimeline(songDetailNode)
    songDetailNode.appendChild(inputWrapper)
  }

  def renderDetail(detail: JsSongDetail): Unit = {
    val songDetailNode = dom.document.createElement("div")
    songDetailNode.setAttribute("id","songEditor")
    createSongDetail(songDetailNode, detail)
    contentPane.appendChild(songDetailNode)
  }

  def createNoteTimeline(songDetailNode: Element) = {
    val line = dom.document.createElement("div")
    line.setAttribute("id","noteTimeline")
    val lineContainer = dom.document.createElement("div")
    lineContainer.setAttribute("id","noteTimelineContainer")
    lineContainer.innerHTML = "&nbsp;"
    lineContainer.appendChild(line)
    songDetailNode.appendChild(lineContainer)
    val addIcon = dom.document.createElement("img")
    addIcon.setAttribute("id", "noteTimelineAddIcon")
    addIcon.setAttribute("src", "/assets/images/add_icon.png")
    addIcon.classList.add("hidden")
    songDetailNode.appendChild(addIcon)

    lineContainer.addEventListener("mousemove", (event: dom.MouseEvent) => {
      addIcon.setAttribute("style","left:" + event.pageX + "px;")
    })
    lineContainer.addEventListener("mouseover", (event: dom.MouseEvent) => {
      addIcon.classList.remove("hidden")
    })
    lineContainer.addEventListener("mouseout", (event: dom.MouseEvent) => {
      addIcon.classList.add("hidden")
    })
  }

}
