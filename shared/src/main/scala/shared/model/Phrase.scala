package shared.model

case class Phrase(val id: Int, val bars: Option[Double], val note: Option[String], val repeat: Option[Int], val lyric: Option[String])