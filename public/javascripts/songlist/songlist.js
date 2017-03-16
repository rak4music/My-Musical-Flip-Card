class SongList {
    constructor(songs) {
        this.songs = songs;
    }
    render() {
        var songList = document.createElement("ul");
        songList.setAttribute("id", "songList");
        songList.classList.add("material");
        var div = document.createElement("div");
        div.innerHTML ="+";
        div.classList.add("addButton");
        songList.appendChild(div);
        this.songs.map(function(song){
           songList.appendChild(new Song(song).render());
        });
        return songList;
    }
}