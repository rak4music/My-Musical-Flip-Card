class SongList {
    constructor(songs) {
        this.songs = songs;
    }
    render() {
        var songList = document.createElement("ul");
        songList.setAttribute("id", "songList");
        songList.classList.add("material");
        var addButton = document.createElement("div");
        addButton.innerHTML ="+";
        addButton.classList.add("addButton");
        addButton.classList.add("material");
        addButton.addEventListener("click", function(){
            var createSong = new CreateSong();
            var createSongDOM = createSong.render();
            createSong.setSongCreateHandler(function(songTitle){
                songList.removeChild(createSongDOM);
            });
            songList.appendChild(createSongDOM);
        });
        songList.appendChild(addButton);
        this.songs.map(function(song){
           songList.appendChild(new Song(song).render());
        });
        return songList;
    }
}