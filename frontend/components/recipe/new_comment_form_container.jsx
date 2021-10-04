import { connect } from "react-redux";
import CommentForm from "./comment_form";
import { createComment } from "../../actions/comment_actions";

const mapStateToProps = (state, ownProps) => ({
  comment: {
    body: "",
    recipe_id: parseInt(ownProps.recipeId),
    author_id: state.session.currentUser.id
  },
  formType: "Add Note"
})

const mapDispatchToProps = dispatch => ({
  action: comment => dispatch(createComment(comment))
})

export default connect(mapStateToProps, mapDispatchToProps)(CommentForm)