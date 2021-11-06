import React from "react";
import CommentItemContainer from "./comment_item_container";

class CommentsIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="recipe-comment-list">
        {Object.keys(this.props.comments).map( (comment, i) => (
          <CommentItemContainer key={i} comment={this.props.comments[comment]} recipeId={this.props.recipeId}/>
        ))}
      </div>
    )
  }
}

export default CommentsIndex;