import { connect } from "react-redux";
import Author from "./author";
import { getAuthorData } from "../../actions/author_actions";

const mapStateToProps = (state, ownProps) => ({
  author: state.entities.author,
  recipes: state.entities.recipes
})

const mapDispatchToProps = dispatch => ({
  getAuthorData: (authorId) => dispatch(getAuthorData(authorId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Author);