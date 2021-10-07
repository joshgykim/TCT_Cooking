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

  componentDidUpdate(prevProp) {
    if (prevProp.comment.id !== this.props.comment.id) {
      this.setState({ editMode: true });
    }
  }
  
  render() {
    let editButton = (this.props.comment.commentorId === this.props.currentUserId) ? ( 
      <button
        className="comment-edit-button"
        onClick={ (e) => this.toggleEditMode(e) }>Edit
      </button>
    ) : (null)
    return (this.state.editMode) ? (
      <div>
        <div className="comment-container">
          <div className="comment-pic">
            <img src="https://static01.nyt.com/applications/cooking/47a639a/assets/user-img-tomato.png"/>
          </div>
          <div className="comment-text">
            <span className="commentor-name">{this.props.comment.commentor}&nbsp;&nbsp;</span>
            <span className="commentor-date">|&nbsp;&nbsp;{
              (this.props.comment.created_at) ?
              this.props.comment.created_at.toString().slice(0, 10) : null}
            </span>
            {editButton}
            <h2>{this.props.comment.body}</h2>
          </div>
        </div>
        <hr className="comment-break"/>
      </div>
    ) : (
      <div className="comment-container">
        <EditCommentFormContainer
          comment={this.props.comment}
          editMode={this.state}
          toggleEditMode={(e) => this.toggleEditMode(e)}
        />
        <hr className="comment-break"/>
      </div>
    )
  }
}

export default CommentItem