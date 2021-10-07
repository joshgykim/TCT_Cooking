import { 
  createRecipeBox,
  deleteRecipeBox
} from "../../actions/recipe_box_actions"
import { connect } from "react-redux";
import SaveButton from "./save_button";

const mapStateToProps = (state, ownProps) => ({
  saved: state.entities.recipes[ownProps.recipeId].saved,
  recipe: state.entities.recipes[ownProps.recipeId],
  currentUser: state.session.currentUser,
  isRecipePage: ownProps.isRecipePage
})

const mapDispatchToProps = dispatch => ({
  saveRecipe: (recipeBoxData) => dispatch(createRecipeBox(recipeBoxData)),
  unsaveRecipe: (recipeBoxData) => dispatch(deleteRecipeBox(recipeBoxData))
})

export default connect(mapStateToProps, mapDispatchToProps)(SaveButton);