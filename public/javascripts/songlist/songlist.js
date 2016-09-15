/**
 * Created by rdettelback on 9/14/16.
 */
var SongList = React.createClass({
    render: function() {
        var songs = @Html(json)[0];
        return (
            <ul id="songList">
            {songs.map(function(song){
                return <Song key={song.id} song={song} />
            })}
        </ul>
        );
    }
});