import { connect } from "react-redux";
import Recipe from "./recipe";

function extractRecipeCategories (state, categoryIds) {
  let categories = {};
  categoryIds.forEach( categoryId => {
    categories[categoryId] = state.entities.categories[categoryId]
  })
  return categories;
}

const mapStateToProps = (state, ownProps) => ({
  recipe: state.entities.recipes[ownProps.match.params.recipeId],
  categories: extractRecipeCategories(
    state, state.entities.recipes[ownProps.match.params.recipeId].categoryIds)
})

const mapDispatchToProps = (dispatch) => ({

})

export default connect(mapStateToProps, mapDispatchToProps)(Recipe);