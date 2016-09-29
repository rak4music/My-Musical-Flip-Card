class SongDetail {
    constructor(song, contentPane) {
        this.song = song;
        this.contentPane = contentPane;
    }

    render () {
        this.reset();
        var songDetail = document.createElement("div");
        songDetail.innerHTML = this.song.title;
        this.contentPane.appendChild(songDetail);
    }

    reset() {
        var range = new Range();
        range.selectNodeContents(this.contentPane);
        range.deleteContents();
    }
}