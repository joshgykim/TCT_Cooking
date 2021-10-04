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
    this.props.action(this.state);
    if (this.props.formType === "Add Note") {
      this.setState(this.props.comment);
    } else {
      
    }
  }

  render() {
    return (
      <form onSubmit={ (e) => this.handleSubmit(e) }>
        <h1>{(this.props.formType === "Add Note") ? "COOKING NOTES" : "Edit"}</h1>
        <label>
          <textarea 
            value={this.state.body}
            onChange={ (e) => this.updateBody(e) }
            placeholder="Share your notes with other cooks"
          />
        </label>
        <br/>
        <button>{this.props.formType}</button>
      </form>
    )
  }
}

export default CommentForm