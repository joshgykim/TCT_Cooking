import { connect } from "react-redux";
import Recipe from "./recipe";
import { getRecipeData } from "../../actions/recipe_actions";

const mapStateToProps = (state, ownProps) => ({
  recipe: state.entities.recipes[ownProps.match.params.recipeId] ? state.entities.recipes[ownProps.match.params.recipeId] : {}
})

const mapDispatchToProps = (dispatch) => ({
  getRecipeData: (recipeId) => dispatch(getRecipeData(recipeId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Recipe);