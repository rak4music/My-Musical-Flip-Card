class SongDetail {
    constructor(song) {
        this.song = song;
    }

    render () {
        var songDetail = document.createElement("li");
        songDetail.setAttribute("className", "songDetail");
        return songDetail;
    }
}