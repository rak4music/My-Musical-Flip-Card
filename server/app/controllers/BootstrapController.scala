package controllers

import play.api.mvc.{Action, Controller}

class BootstrapController extends Controller {
  def init() = Action {
    Ok(views.html.app.render(""))
  }
}
