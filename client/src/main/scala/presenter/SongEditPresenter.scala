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
    songDetailNode.appendChild(input)
  }

  def renderDetail(detail: JsSongDetail): Unit = {
    val songDetailNode = dom.document.createElement("div")
    songDetailNode.setAttribute("id","songDetail")
    createSongDetail(songDetailNode, detail)
    contentPane.appendChild(songDetailNode)
  }
}
