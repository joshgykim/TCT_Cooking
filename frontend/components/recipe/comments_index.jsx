import React from "react";
import CommentItem from "./comment_item";

class CommentsIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="recipe-comment-list">
        {Object.keys(this.props.comments).map( (comment, i) => (
          <CommentItem key={i} comment={this.props.comments[comment]}/>
        ))}
      </div>
    )
  }
}

export default CommentsIndex;