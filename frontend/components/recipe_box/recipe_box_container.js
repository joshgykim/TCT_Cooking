import { connect } from "react-redux";
import RecipeBox from "./recipe_box";
import { getUserData } from "../../actions/user_actions";

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
  recipes: state.entities.recipes,
  categories: state.entities.categories
})

const mapDispatchToProps = dispatch => ({
  getUserData: userId => dispatch(getUserData(userId))
})

export default connect(mapStateToProps, mapDispatchToProps)(RecipeBox); 