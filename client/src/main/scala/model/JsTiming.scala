package model

import shared.model.Timing

import scala.scalajs.js
import scala.scalajs.js.annotation.ScalaJSDefined

@ScalaJSDefined
trait JsTiming extends js.Object {
  val upper:Int
  val lower: Int
}

object JsTiming {
  implicit class JsTimingOpts(val self: JsTiming) {
    def toTiming(): Timing = {
      Timing(
        self.upper,
        self.lower
      )
    }
  }
}