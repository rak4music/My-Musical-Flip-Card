class SongDetail {
    constructor(song, contentPane) {
        this.song = song;
        this.contentPane = contentPane;
        this.onClickStart = this.onClickStart.bind(this);
        this.onClickPause = this.onClickPause.bind(this);
        this.onClickRestart = this.onClickRestart.bind(this);
        this.totalBars = 0;
        this.totalBeats = 0;
        this.bpm = 0;
    }

    render () {
        var _this = this;
        this.reset();
        var xhr = new XMLHttpRequest();
        xhr.open("GET", this.song.href);
        xhr.responseType = "json";
        xhr.onload = function(){_this.renderDetail(xhr.response)};
        xhr.send();
    }

    renderDetail(detail){
        var songDetail = document.createElement("div");
        songDetail.setAttribute("id","songDetail");
        this.renderSong(detail, songDetail);
        this.contentPane.appendChild(songDetail);

        var controlsContainer = document.createElement("div");
        controlsContainer.setAttribute("id", "controlsContainer");

        var startButton = document.createElement("button");
        startButton.innerHTML = "Start";
        startButton.classList.add("material");
        startButton.addEventListener("click", this.onClickStart);
        startButton.setAttribute("id","startButton");
        startButton.classList.add("runControlButton");
        controlsContainer.appendChild(startButton);

        var pauseButton = document.createElement("button");
        pauseButton.innerHTML = "Pause";
        pauseButton.classList.add("material");
        pauseButton.addEventListener("click", this.onClickPause);
        pauseButton.setAttribute("id","pauseButton");
        pauseButton.classList.add("runControlButton");
        pauseButton.classList.add("hidden");
        controlsContainer.appendChild(pauseButton);

        var restartButton = document.createElement("button");
        restartButton.innerHTML = "Restart";
        restartButton.classList.add("material");
        restartButton.addEventListener("click", this.onClickRestart);
        restartButton.setAttribute("id","restartButton");
        restartButton.classList.add("runControlButton");
        controlsContainer.appendChild(restartButton);

        var checkboxContainer = document.createElement("span");
        checkboxContainer.setAttribute("id","metronomeContainer");

        var checkbox = document.createElement("input");
        checkbox.setAttribute("type", "checkbox");
        checkbox.setAttribute("id", "metronomeCheckbox");
        checkboxContainer.appendChild(checkbox);

        var label = document.createElement("label");
        label.setAttribute("for", "metronomeCheckbox");
        label.innerHTML = "Metronome";
        checkboxContainer.appendChild(label);
        controlsContainer.appendChild(checkboxContainer);

        this.contentPane.appendChild(controlsContainer);
    }

    onClickStart() {
        this.play();
        this.startMetronome();
        document.getElementById("startButton").innerHTML="Resume"
    }

    onClickPause() {
        this.pause();
        this.pauseMetronome();
    }

    onClickRestart() {
        this.restart();
    }

    play() {
        songDetail.style.transitionDuration = this.song.duration + "s";
        songDetail.style.left = -songDetail.offsetWidth + "px";
        songDetail.classList.add("slider");
        var pauseButton = document.getElementById("pauseButton");
        pauseButton.classList.remove("hidden");
        var startButton = document.getElementById("startButton");
        startButton.classList.add("hidden");

    }

    restart() {
        songDetail.style.transitionDuration = 0 + "s";
        songDetail.classList.remove("slider");
        songDetail.style.left = 0 + "px";
        this.stopMetronome();
        startButton.innerHTML = "Start";
        var pauseButton = document.getElementById("pauseButton");
        pauseButton.classList.add("hidden")
        startButton.classList.remove("hidden");

    }

    startMetronome() {
        var metronomeCheckbox = document.getElementById("metronomeCheckbox");
        if(document.querySelector("#metronomeCheckbox").checked) {
            var metronome = document.getElementById("metronome");
            metronome.playbackRate = this.bpm;
            metronome.play();
            this.metronomeAutoStopIntervalId = setTimeout(function() {
                metronome.pause();
            }, this.calculateRemainingDuration() * 1000);
        }
    }
    calculateRemainingDuration() {
        var duration = this.song.duration;
        var computedStyle = window.getComputedStyle(songDetail);
        var left = Math.abs(parseInt(computedStyle.getPropertyValue("left")));
        var width = parseInt(computedStyle.getPropertyValue("width").replace("px",""));
        var pct = left/width;
        return duration * 1-pct;
    }
    pause() {
        var songDetail = document.getElementById("songDetail");
        var computedStyle = window.getComputedStyle(songDetail);
        songDetail.classList.remove("slider");
        songDetail.style.left = computedStyle.getPropertyValue("left");
        var startButton = document.getElementById("startButton");
        startButton.classList.remove("hidden");
        var pauseButton = document.getElementById("pauseButton");
        pauseButton.classList.add("hidden");

    }

    pauseMetronome() {
        var metronome = document.getElementById("metronome");
        metronome.pause();
        clearInterval(this.metronomeAutoStopIntervalId);
    }

    stopMetronome() {
        this.pauseMetronome();
        document.getElementById("metronome").currentTime=0;
    }

    reset() {
        var range = new Range();
        range.selectNodeContents(this.contentPane);
        range.deleteContents();
    }

    renderSong(song, container) {
        for(var i=0;i<song.phrases.length;i++) {
            var phrase = song.phrases[i];
            this.totalBars += parseInt(phrase.bars);
            var phraseView = new Phrase(phrase, container);
            phraseView.render();
            if(phrase.repeat) {
                this.totalBars += parseInt(phrase.bars);
                //We start at 1 instead of 0 because we've already rendered 1 phrase already before the if statement
                for(var j=1;j<phrase.repeat;j++) {
                    phraseView.render();
                }
            }
        }
        var beatsPerBar = song.timing.lower;
        this.totalBeats = beatsPerBar * this.totalBars;
        this.bpm = this.totalBeats / this.song.duration;
    }
}

class Phrase {
    constructor(phrase, container) {
        this.phrase = phrase;
        this.container = container;
        this.baseWidth = 430;
    }
    render() {
        var view = document.createElement("div");
        view.setAttribute("class","phraseContainer");
        view.style.width = this.baseWidth * this.phrase.bars + "px";

        if(this.phrase.note) {
            var noteView = document.createElement("div");
            noteView.innerHTML = this.phrase.note;
            noteView.setAttribute("class","note");
            view.appendChild(noteView);
        }

        var phraseView = document.createElement("div");
        phraseView.setAttribute("class","phrase");
        if(this.phrase.lyric) {
            phraseView.innerHTML = this.phrase.lyric;
        }
        view.appendChild(phraseView);
        this.container.appendChild(view);
    }
}