import React from "react";

class CommentForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.comment;

    this.updateBody = this.updateBody.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  updateBody(e) {
    this.setState({body: e.currentTarget.value})
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createComment(this.state);
    this.setState(this.props.comment);
  }

  render() {
    return (
      <form onSubmit={ (e) => this.handleSubmit(e) }>
        <h1>COOKING NOTES</h1>
        <label>
          <textarea 
            value={this.state.body}
            onChange={ (e) => this.updateBody(e) }
            placeholder="Share your notes with other cooks"
          />
        </label>
        <br/>
        <button>Add Note</button>
      </form>
    )
  }
}

export default CommentForm