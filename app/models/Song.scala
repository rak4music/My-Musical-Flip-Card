package models

case class Song(val id: Int, val title: String, val author: String, val timing: Timing, val key: String, val phrases: List[Phrase])
case class SongReference(val id: Int, val title: String, val href: String)