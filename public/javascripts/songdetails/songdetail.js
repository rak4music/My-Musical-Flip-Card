class SongDetail {
    constructor(song, contentPane) {
        this.song = song;
        this.contentPane = contentPane;
        //TODO:  Remove this once the back-end has support for the shape of model that we want
        this.song = eval('({"id":1,"duration":"42", "title":"Bertha","author":"The Grateful Dead","timing":{"upper":4,"lower":4},"key":"C","phrases":[{"bars":"1", "note":"G C/G", "repeat":1, "lyric":"[Intro]"}, {"bars":"1", "note":"G C/G", "repeat":8,},{"note":"C","lyric":"I had a hard run","bars":1},{"bars":1},{"note":"C","lyric":"runnin\' from your","bars":.75},{"note":"G C/G","lyric":"window","bars":.25},{"bars":1},{"lyric":"I was all night running, running, running","note":"C","bars":1.75},{"lyric":"Lord, I wonder if you care?","note":"G C/G","bars":1}]})');
        this.onClickStart = this.onClickStart.bind(this);
    }

    render () {
        this.reset();
        var songDetail = document.createElement("div");
        songDetail.setAttribute("id","songDetail");
        this.renderSong(this.song, songDetail);
        this.contentPane.appendChild(songDetail);

        var button = document.createElement("button");
        button.innerHTML = "Start";
        button.addEventListener("click", this.onClickStart);
        button.setAttribute("id","startButton");
        this.contentPane.appendChild(button);
    }

    onClickStart() {
        this.play();
    }

    play() {
        songDetail.style.transitionProperty = "left";
        songDetail.style.transitionDuration = this.song.duration + "s";
        songDetail.style.transitionTimingFunction = "linear";
        songDetail.style.left = -songDetail.offsetWidth + "px";
    }

    reset() {
        var range = new Range();
        range.selectNodeContents(this.contentPane);
        range.deleteContents();
    }

    renderSong(song, container) {
        for(var i=0;i<song.phrases.length;i++) {
            var phrase = song.phrases[i];
            var phraseView = new Phrase(phrase, container);
            phraseView.render();
            if(phrase.repeat) {
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