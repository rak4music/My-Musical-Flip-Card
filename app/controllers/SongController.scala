package controllers
import java.io.{File, FileInputStream}

import anorm._
import com.flip.model.ScoreBuilder
import com.google.inject.Inject
import jm.util.Write
import play.api.db.DBApi
import play.api.libs.json.Json
import play.api.mvc.{Action, Controller}

class SongController @Inject()(dbApi: DBApi) extends Controller {

  implicit private val db = dbApi.database("mymusicalflipcard")

  def rowToLine(row: Row) = {
   Json.obj(
     "id" -> row[Int]("id")
   )

  }

  def lines(id: Int) = Action {
    db.withConnection{implicit c =>
      val lines = SQL("select * from lines where song_id = {id}").on("id"->id)().map { row =>
        rowToLine(row)
      }
      Ok(Json.toJson(lines))
    }
  }

  def create() = Action { request =>
    request.body.asJson.map { json =>
      val score = new ScoreBuilder().build(json)
      val fileName = (json \ "title").as[String] + ".jm"
      Write.jm(score, fileName)
      val file = new File(fileName)
      val stream  = new FileInputStream(file)
      db.withConnection { implicit c =>
        SQL("insert into scores (title, artist, file) values({title}, {artist}, {file})").on('title -> score.getTitle,
                                                                       'artist -> (json \ "artist").as[String],
                                                                       'file -> stream).executeUpdate()
      }
      file.delete()
    }
    Ok("")
  }
}