class SongList {
    constructor(songs) {
        this.songs = songs;
    }
    render() {
        var songList = document.createElement("ul");
        songList.setAttribute("id", "songList");
        this.songs.map(function(song){
           songList.appendChild(new Song(song).render());
        });
        return songList;
    }
}