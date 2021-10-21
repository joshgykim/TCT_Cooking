import { connect } from "react-redux";
import CategoryThumbnail from "./category_thumbnail";

function findCategoryImage(state, recipeArr) {
  if (recipeArr !== undefined && state.entities.recipes[recipeArr[0]] !== undefined) {
    return state.entities.recipes[recipeArr[0]].image_url
  }
}

const mapStateToProps = (state, ownProps) => ({
  image_url: findCategoryImage(state, ownProps.category.recipes),
  category: ownProps.category,
  filterRecipes: (filter) => ownProps.filterRecipes(filter),
  toggleCategory: (catId) => ownProps.toggleCategory(catId),
  toggled: ownProps.toggled
})

export default connect(mapStateToProps, null)(CategoryThumbnail);