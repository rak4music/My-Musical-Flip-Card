class CreateSong {
    constructor() {
        this.songCreateHandler = null;
        this.state = {
            selected: false
        }
        this.handleClick = this.handleClick.bind(this);
        this.onKeyPress = this.onKeyPress.bind(this);
    }

    setSongCreateHandler(songCreateHandler){
        this.songCreateHandler = songCreateHandler;
    }


    handleClick() {
        var event = new Event(EventType.VIEW_SONG);
        event.song = this.song;
        window.eventBus.dispatchEvent(event);
    }

    onKeyPress(e,song){
       var key=e.keyCode;
       if(key==13){
           var event=new Event(EventType.CREATE_SONG);
           event.song=song.value;
           window.eventBus.dispatchEvent(event);
           if (this.songCreateHandler){
               this.songCreateHandler(song.value);
           }
       }
    }

    render () {
        var song = document.createElement("input");
        song.setAttribute("type","text");
        song.addEventListener("keypress", (e) => this.onKeyPress(e,song));
        var li=document.createElement("li");
        li.appendChild(song);
        return li;
    }
}