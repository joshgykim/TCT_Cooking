import { connect } from "react-redux";
import Recipe from "./recipe";
import { getRecipeData } from "../../actions/recipe_actions";
import { saveIngredients } from "../../actions/shopping_actions";

const mapStateToProps = (state, ownProps) => ({
  recipe: state.entities.recipes[ownProps.match.params.recipeId] ? (
    state.entities.recipes[ownProps.match.params.recipeId]) : (null),
  categories: state.entities.categories,
  ingredients: state.entities.ingredients,
  comments: state.entities.comments ? state.entities.comments : {}
})

const mapDispatchToProps = (dispatch) => ({
  getRecipeData: (recipeId) => dispatch(getRecipeData(recipeId)),
  saveIngredients: (recipeId) => dispatch(saveIngredients(recipeId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Recipe);