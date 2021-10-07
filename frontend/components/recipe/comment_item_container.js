import { connect } from "react-redux";
import CommentItem from "./comment_item";

const mapStateToProps = (state, ownProps) => ({
  comment: ownProps.comment,
  currentUserId: state.session.currentUser.id
})

export default connect(mapStateToProps, null)(CommentItem)