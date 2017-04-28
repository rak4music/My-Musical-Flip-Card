package model

import shared.model.Phrase

import scala.scalajs.js
import scala.scalajs.js.annotation.ScalaJSDefined

@ScalaJSDefined
trait JsPhrase extends js.Object {
  val id: Int
  val bars: js.UndefOr[Double]
  val note: js.UndefOr[String]
  val repeat: js.UndefOr[Int]
  val lyric: js.UndefOr[String]
}

object JsPhrase {
  implicit class JsPhraseOpts(val self: JsPhrase) extends AnyVal {
    def toPhrase(): Phrase = {
      Phrase(
        self.id,
        self.bars.toOption,
        self.note.toOption,
        self.repeat.toOption,
        self.lyric.toOption
      )
    }
  }
}