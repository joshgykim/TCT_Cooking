import { connect } from "react-redux";
import CommentForm from "./comment_form";
import { updateComment } from "../../actions/comment_actions";

const mapStateToProps = (state, ownProps) => ({
  comment: {
    id: ownProps.comment.id,
    body: ownProps.comment.body,
    recipe_id: 3,
    author_id: ownProps.comment.commentorId
  },
  formType: "Edit Note"
})

const mapDispatchToProps = dispatch => ({
  action: comment => dispatch(updateComment(comment))
})

export default connect(mapStateToProps, mapDispatchToProps)(CommentForm)