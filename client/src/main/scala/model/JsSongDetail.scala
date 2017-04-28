package model

import shared.model._

import scala.scalajs.js
import scala.scalajs.js.annotation.ScalaJSDefined

@ScalaJSDefined
trait JsSongDetail extends js.Object {
  val id: Int
  val title: String
  val artist: String
  val timing: JsTiming
  val key: String
  val duration: Double
  val phrases: js.Array[JsPhrase]
}

object JsSongDetail {
  implicit class SongDetailOpts(val self: JsSongDetail) extends AnyVal {
    def toSongDetail: SongDetail = {
      SongDetail(
        self.id,
        self.title,
        self.artist,
        Timing(self.timing.upper, self.timing.lower),
        self.key,
        self.duration,
        self.phrases.map(phrase => Phrase(phrase.id, phrase.bars.toOption, phrase.note.toOption, phrase.repeat.toOption, phrase.lyric.toOption)).toList
      )
    }
  }
}