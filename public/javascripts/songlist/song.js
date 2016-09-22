class Song {
    constructor(song) {
        this.song = song;
        this.state = {
            selected: false
        }
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick() {
        this.setState({selected: true});
    }

    render () {
        var song = document.createElement("li");
        song.setAttribute("className", this.state.selected ? "selected":"");
        song.innerHTML = this.song.title;
        return song;
    }
}