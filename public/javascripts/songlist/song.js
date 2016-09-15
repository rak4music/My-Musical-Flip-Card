/**
 * Created by rdettelback on 9/14/16.
 */
class Song extends React.Component {
    constructor() {
        super();
        this.state = {
            selected: false
        }
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick() {
        this.setState({selected: true});
    }

    render () {
        return <li className={this.state.selected ? "selected":""}>{this.props.song.title}</li>
    }
}