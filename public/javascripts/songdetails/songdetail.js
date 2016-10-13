class SongDetail {
    constructor(song, contentPane) {
        this.song = song;
        this.contentPane = contentPane;
        this.sampleSong = eval('({"id":1,"title":"Bertha","author":"The Grateful Dead","timing":{"upper":4,"lower":4},"key":"C","phrases":[{"note":"C","lyric":"I had a hard run","bars":1},{"bars":2},{"note":"C","lyric":"runnin\' from your","bars":.75},{"note":"G C/G","lyric":"window","bars":.25},{"bars":3},{"lyric":"I was all night running, running, running","note":"C","bars":2},{"bars":1},{"lyric":"I wonder if you care?","note":"G C/G","bars":1}]})');
        this.onClickStart = this.onClickStart.bind(this);
        this.intervalId = NaN;
    }

    render () {
        this.reset();
        var songDetail = document.createElement("div");
        songDetail.setAttribute("id","songDetail");
        this.renderSong(this.sampleSong, songDetail);
        this.contentPane.appendChild(songDetail);

        var button = document.createElement("button");
        button.innerHTML = "Start";
        button.addEventListener("click", this.onClickStart);
        button.setAttribute("id","startButton");
        this.contentPane.appendChild(button);
    }

    onClickStart(event) {
        this.play();
    }

    play() {
        var intervalId = setInterval(function() {
            var songDetail = document.getElementById("songDetail");
            var tempo = 50;
            songDetail.style.left = (songDetail.offsetLeft - tempo) + "px";
            console.log("moving");
            if(songDetail.offsetWidth + songDetail.offsetLeft < 0) {
                clearInterval(intervalId);
            }
        }, 100);
    }

    reset() {
        var range = new Range();
        range.selectNodeContents(this.contentPane);
        range.deleteContents();
    }

    renderSong(song, container) {
        for(var i=0;i<song.phrases.length;i++) {
            new Phrase(song.phrases[i], container).render();
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

        if(this.phrase.lyric) {
            var phraseView = document.createElement("div");
            phraseView.setAttribute("class","phrase");
            phraseView.innerHTML = this.phrase.lyric;
            view.appendChild(phraseView);
        }
        this.container.appendChild(view);
    }
}