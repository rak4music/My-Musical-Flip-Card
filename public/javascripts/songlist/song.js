class Song {
    constructor(song) {
        this.song = song;
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
        var song = document.createElement("li");
        song.addEventListener("click",this.handleClick);
        song.setAttribute("className", this.state.selected ? "selected":"");
        song.innerHTML = this.song.title;
        return song;
    }
}