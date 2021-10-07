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
      this.setState(this.props.comment);
      this.props.toggleEditMode(e)
    }
  }

  render() {
    let cancelButton = (this.props.formType === "Edit Note") ? (
      <button onClick={(e) => this.props.toggleEditMode(e)}>Cancel</button>
    ) : (null)
    return (
      <form className="comment-form" onSubmit={ (e) => this.handleSubmit(e) }>
        <h1>{(this.props.formType === "Add Note") ? "COOKING NOTES" : "EDIT NOTE"}</h1>
        <label>
          <textarea 
            required
            value={this.state.body}
            onChange={ (e) => this.updateBody(e) }
            placeholder="Share your notes with other cooks"
          />
        </label>
        <br/>
        <button>{this.props.formType}</button>
        {cancelButton}
      </form>
    )
  }
}

export default CommentForm