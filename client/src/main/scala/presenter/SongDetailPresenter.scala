package presenter

import model.{JsSongDetail, SongReference}
import org.scalajs.dom
import org.scalajs.dom.html.{Audio, Div, Input}
import org.scalajs.dom.{Event, Node, XMLHttpRequest}

import scala.scalajs.js.JSON

class SongDetailPresenter(val song: SongReference, val contentPane: Node) extends SongPresenter {

  var songDetail: JsSongDetail = null
  var metronomeAutoStopIntervalId: Int = 0
  var totalBars:Double = 0
  var totalBeats: Double = 0
  var bpm:Double  = 0

  def render () {
    this.reset()
    this.fetchSong(song, renderDetail)
  }

  def renderDetail(detail: JsSongDetail){
    val songDetailNode = dom.document.createElement("div");
    songDetailNode.setAttribute("id","songDetail");
    this.renderSongDetail(songDetailNode);
    this.contentPane.appendChild(songDetailNode);

    val controlsContainer = dom.document.createElement("div");
    controlsContainer.setAttribute("id", "controlsContainer");

    val startButton = dom.document.createElement("button");
    startButton.innerHTML = "Start";
    startButton.classList.add("material");
    startButton.addEventListener("click", (e: Event) => this.onClickStart);
    startButton.setAttribute("id","startButton");
    startButton.classList.add("runControlButton");
    controlsContainer.appendChild(startButton);

    val pauseButton = dom.document.createElement("button");
    pauseButton.innerHTML = "Pause";
    pauseButton.classList.add("material");
    pauseButton.addEventListener("click", (e: Event) => this.onClickPause);
    pauseButton.setAttribute("id","pauseButton");
    pauseButton.classList.add("runControlButton");
    pauseButton.classList.add("hidden");
    controlsContainer.appendChild(pauseButton);

    val restartButton = dom.document.createElement("button");
    restartButton.innerHTML = "Restart";
    restartButton.classList.add("material");
    restartButton.addEventListener("click", (e: Event) => this.onClickRestart);
    restartButton.setAttribute("id","restartButton");
    restartButton.classList.add("runControlButton");
    controlsContainer.appendChild(restartButton);

    val checkboxContainer = dom.document.createElement("span");
    checkboxContainer.setAttribute("id","metronomeContainer");

    val checkbox = dom.document.createElement("input");
    checkbox.setAttribute("type", "checkbox");
    checkbox.setAttribute("id", "metronomeCheckbox");
    checkboxContainer.appendChild(checkbox);

    val label = dom.document.createElement("label");
    label.setAttribute("for", "metronomeCheckbox");
    label.innerHTML = "Metronome";
    checkboxContainer.appendChild(label);
    controlsContainer.appendChild(checkboxContainer);

    this.contentPane.appendChild(controlsContainer);
  }

  def onClickStart() {
    this.play();
    this.startMetronome();
    dom.document.getElementById("startButton").innerHTML="Resume"
  }

  def onClickPause() {
    this.pause();
    this.pauseMetronome();
  }

  def onClickRestart() {
    this.restart();
  }

  def play() {
    val songDetailNode = dom.document.getElementById("songDetail").asInstanceOf[Div]
    songDetailNode.style.transitionDuration = this.songDetail.duration + "s"
    songDetailNode.style.left = (0 - songDetailNode.offsetWidth) + "px"
    songDetailNode.classList.add("slider")
    val pauseButton = dom.document.getElementById("pauseButton")
    pauseButton.classList.remove("hidden")
    val startButton = dom.document.getElementById("startButton")
    startButton.classList.add("hidden")
  }

  def restart() {
    val songDetailNode = dom.document.getElementById("songDetail").asInstanceOf[Div]
    songDetailNode.style.transitionDuration = 0 + "s";
    songDetailNode.classList.remove("slider");
    songDetailNode.style.left = 0 + "px";
    this.stopMetronome();
    val startButton = dom.document.getElementById("startButton");
    startButton.innerHTML = "Start";
    val pauseButton = dom.document.getElementById("pauseButton");
    pauseButton.classList.add("hidden")
    startButton.classList.remove("hidden");
  }

  def startMetronome() {
    if(dom.document.querySelector("#metronomeCheckbox").asInstanceOf[Input].checked) {
      val metronome = dom.document.getElementById("metronome").asInstanceOf[Audio];
      metronome.playbackRate = this.bpm / 100;
      metronome.play();
      this.metronomeAutoStopIntervalId = dom.window.setTimeout(() => {
        metronome.pause();
      }, this.calculateRemainingDuration() * 1000);
    }
  }

  def calculateRemainingDuration(): Double = {
    val duration = this.songDetail.duration
    val songDetailNode = dom.document.getElementById("songDetail").asInstanceOf[Div]
    val computedStyle = dom.window.getComputedStyle(songDetailNode)
    val left = Math.abs(computedStyle.getPropertyValue("left").toInt)
    val width = computedStyle.getPropertyValue("width").replace("px","").toInt
    val pct = left/width
    return duration * 1-pct
  }

  def pause() {
    val songDetailNode = dom.document.getElementById("songDetail").asInstanceOf[Div]
    val computedStyle = dom.window.getComputedStyle(songDetailNode)
    songDetailNode.classList.remove("slider")
    songDetailNode.style.left = computedStyle.getPropertyValue("left")
    val startButton = dom.document.getElementById("startButton")
    startButton.classList.remove("hidden")
    val pauseButton = dom.document.getElementById("pauseButton")
    pauseButton.classList.add("hidden");

  }

  def pauseMetronome() {
    val metronome = dom.document.getElementById("metronome").asInstanceOf[Audio]
    metronome.pause()
    dom.window.clearInterval(this.metronomeAutoStopIntervalId)
  }

  def stopMetronome() {
    this.pauseMetronome();
    dom.document.getElementById("metronome").asInstanceOf[Audio].currentTime=0;
  }

  def renderSongDetail(container: Node) {
    this.songDetail.phrases.foreach { phrase =>
      this.totalBars += phrase.bars.get
      val phrasePresenter = new PhrasePresenter(phrase, container);
      phrasePresenter.render();
      phrase.repeat.toOption match {
        case Some(repeat) => {
          for(j <- 1 until repeat) {
            this.totalBars += phrase.bars.get
            phrasePresenter.render();
          }
        }
      }
    }
    var beatsPerBar = this.songDetail.timing.lower;
    this.totalBeats = beatsPerBar * this.totalBars;
    this.bpm = this.totalBeats / (this.songDetail.duration / 60);
  }
}