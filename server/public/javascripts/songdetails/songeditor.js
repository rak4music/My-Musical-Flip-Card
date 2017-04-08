class SongEditor{
    constructor(song, contentPane){
        this.song=song;
        this.contentPane=contentPane;
    }
    render(){
        this.contentPane.innerHTML=this.song;
    }
}