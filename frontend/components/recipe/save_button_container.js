import { connect } from "react-redux";
import SaveButton from "./save_button";
import { createRecipeBox } from "../../actions/recipe_box_actions"

const mapStateToProps = (state, ownProps) => ({
  recipe: ownProps.recipe,
  currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
  saveRecipe: (recipeBoxData) => dispatch(createRecipeBox(recipeBoxData))
})

export default connect(mapStateToProps, mapDispatchToProps)(SaveButton);