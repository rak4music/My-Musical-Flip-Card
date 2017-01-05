package com.flip.model

import jm.music.data.Score
import play.api.libs.json.JsValue

class ScoreBuilder {
  def build(json: JsValue): Score = {
    val title = (json \ "title").as[String]
    val score = new Score(title)

    score
  }
}
