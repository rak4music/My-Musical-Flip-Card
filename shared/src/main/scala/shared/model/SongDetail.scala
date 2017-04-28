package shared.model

case class SongDetail(val id: Int, val title: String, val artist: String, val timing: Timing, val key: String, val duration: Double, val phrases: List[Phrase])