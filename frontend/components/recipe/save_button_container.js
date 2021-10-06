import { 
  createRecipeBox,
  deleteRecipeBox
} from "../../actions/recipe_box_actions"
import { connect } from "react-redux";
import SaveButton from "./save_button";

const mapStateToProps = (state, ownProps) => ({
  saved: ownProps.recipe.saved,
  recipe: ownProps.recipe,
  currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
  saveRecipe: (recipeBoxData) => dispatch(createRecipeBox(recipeBoxData)),
  unsaveRecipe: (recipeBoxData) => dispatch(deleteRecipeBox(recipeBoxData))
})

export default connect(mapStateToProps, mapDispatchToProps)(SaveButton);