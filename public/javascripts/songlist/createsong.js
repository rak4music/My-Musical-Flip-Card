class CreateSong {
    constructor() {
        this.state = {
            selected: false
        }
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick() {
        var event = new Event(EventType.VIEW_SONG);
        event.song = this.song;
        window.eventBus.dispatchEvent(event);
    }

    render () {
        var song = document.createElement("input");
        song.setAttribute("type","text");
        song.addEventListener("keypress",function(e){
            var key=e.keyCode;
            if(key==13){
                var event=new Event(EventType.CREATE_SONG);
                event.song=song.value;
                window.eventBus.dispatchEvent(event);
            }
        });
        var li=document.createElement("li");
        li.appendChild(song);
        return li;
    }
}