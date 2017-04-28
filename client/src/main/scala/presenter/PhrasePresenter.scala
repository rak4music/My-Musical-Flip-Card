package presenter

import model.JsPhrase
import org.scalajs.dom
import org.scalajs.dom.Node
import org.scalajs.dom.html.Div

class PhrasePresenter(phrase: JsPhrase, container: Node) {

  val baseWidth = 430

  def render() {
    val view = dom.document.createElement("div").asInstanceOf[Div]
    view.setAttribute("class","phraseContainer");
    view.style.width = this.baseWidth * this.phrase.bars.get + "px";

    this.phrase.note.toOption match {
      case Some(note) => {
        var noteView = dom.document.createElement("div");
        noteView.innerHTML = note;
        noteView.setAttribute("class","note");
        view.appendChild(noteView);
      }
    }

    val phraseView = dom.document.createElement("div");
    phraseView.setAttribute("class","phrase");
    this.phrase.lyric.toOption match {
      case Some(lyric) => {
        phraseView.innerHTML = lyric
      }
    }
    view.appendChild(phraseView);
    this.container.appendChild(view);
  }
}
