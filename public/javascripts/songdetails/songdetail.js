class SongDetail {
    constructor(song, contentPane) {
        this.song = song;
        this.contentPane = contentPane;
        //TODO:  Remove this once the back-end has support for the shape of model that we want
        this.song = eval('({"id":1,"duration":"42", "title":"Bertha","author":"The Grateful Dead","timing":{"upper":4,"lower":4},"key":"C","phrases":[{"bars":"1", "note":"G C/G", "repeat":1, "lyric":"[Intro]"}, {"bars":"1", "note":"G C/G", "repeat":8,},{"note":"C","lyric":"I had a hard run","bars":1},{"bars":1},{"note":"C","lyric":"runnin\' from your","bars":.75},{"note":"G C/G","lyric":"window","bars":.25},{"bars":1},{"lyric":"I was all night running, running, running","note":"C","bars":1.75},{"lyric":"Lord, I wonder if you care?","note":"G C/G","bars":1}]})');
        this.onClickStart = this.onClickStart.bind(this);
        this.onClickPause = this.onClickPause.bind(this);
        this.totalBars = 0;
    }

    render () {
        this.reset();
        var songDetail = document.createElement("div");
        songDetail.setAttribute("id","songDetail");
        this.renderSong(this.song, songDetail);
        this.contentPane.appendChild(songDetail);

        var controlsContainer = document.createElement("div");
        controlsContainer.setAttribute("id", "controlsContainer");

        var startButton = document.createElement("button");
        startButton.innerHTML = "Start";
        startButton.addEventListener("click", this.onClickStart);
        startButton.setAttribute("id","startButton");
        startButton.classList.add("runControlButton");
        controlsContainer.appendChild(startButton);

        var pauseButton = document.createElement("button");
        pauseButton.innerHTML = "Pause";
        pauseButton.addEventListener("click", this.onClickPause);
        pauseButton.setAttribute("id","pauseButton");
        pauseButton.classList.add("runControlButton");
        pauseButton.classList.add("hidden");
        controlsContainer.appendChild(pauseButton);

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

    play() {
        songDetail.style.transitionDuration = this.song.duration + "s";
        songDetail.style.left = -songDetail.offsetWidth + "px";
        songDetail.classList.add("slider");
        var pauseButton = document.getElementById("pauseButton");
        pauseButton.classList.remove("hidden");
        var startButton = document.getElementById("startButton");
        startButton.classList.add("hidden");

    }

    startMetronome() {
        var metronomeCheckbox = document.getElementById("metronomeCheckbox");
        if(document.querySelector("#metronomeCheckbox").checked) {
            var beatsPerBar = this.song.timing.lower;
            var totalBeats = beatsPerBar * this.totalBars
            var bpm = totalBeats / this.song.duration;
            var metronome = document.getElementById("metronome");
            metronome.playbackRate = bpm;
            metronome.play();
            this.metronomeAutoStopIntervalId = setTimeout(function() {
                metronome.pause();
            }, this.song.duration * 1000);
        }
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