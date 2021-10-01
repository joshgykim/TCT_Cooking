import React from "react";
import EditCommentFormContainer from "./edit_comment_form_container";

class CommentItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = { editMode: true };

    this.toggleEditMode = this.toggleEditMode.bind(this);
  }

  toggleEditMode(e) {
    e.preventDefault();
    this.setState({ editMode: !this.state.editMode });
  }
  
  render() {
    console.log(this.props);
    return (this.state.editMode) ? (
    <div className="comment-container">
      <h2>{this.props.comment.commentor}</h2>
      <h2>{this.props.comment.created_at}</h2>
      <h2>{this.props.comment.body}</h2>
      <button onClick={ (e) => this.toggleEditMode(e) }>Edit</button>
      <hr/>
    </div>
    ) : (
      <EditCommentFormContainer comment={this.props.comment}/>
    )
  }
}

export default CommentItem