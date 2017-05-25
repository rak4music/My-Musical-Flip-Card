package presenter

import model.{JsSongDetail, SongReference}
import org.scalajs.dom
import org.scalajs.dom.{Event, Node, XMLHttpRequest}

import scala.scalajs.js.JSON

trait SongPresenter {

  val contentPane: Node
  var songDetail: JsSongDetail

  def fetchSong(song: SongReference, detailRenderer: (JsSongDetail) => Unit): Unit = {
    val xhr = new XMLHttpRequest()
    xhr.open("GET", song.href)
    xhr.onload = (e: Event) => {
      val text = xhr.responseText
      val detail:JsSongDetail = JSON.parse(xhr.responseText).asInstanceOf[JsSongDetail]
      this.songDetail = detail
      detailRenderer(detail)
    }
    xhr.send();
  }

  def reset() {
    val range = dom.document.createRange()
    range.selectNodeContents(this.contentPane)
    range.deleteContents()
  }
}
