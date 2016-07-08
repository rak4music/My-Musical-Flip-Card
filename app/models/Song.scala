package models

case class Song(val id: String, val title: String, val author: String, val timing: Timing, val key: String, val phrases: List[Phrase])