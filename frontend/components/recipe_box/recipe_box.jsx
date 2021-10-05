import React from "react";
import SavedRecipeIndex from "./saved_recipe_index";
import SavedCategoryIndex from "./saved_category_index";

class RecipeBox extends React.Component {
  constructor(props) {
    super(props);
    this.state = {filter: null}
    this.filterRecipes = this.filterRecipes.bind(this);
  }

  componentDidMount() {
    this.props.getUserData(this.props.currentUser.id);
  }

  filterRecipes(filter) {
    this.setState({ filter });
  }

  render() {
    return (
      <div className="recipebox">
        <SavedCategoryIndex
          filterRecipes={(arr) => this.filterRecipes(arr)}
          categories={this.props.categories}
          recipeNum={Object.keys(this.props.recipes).length}
        />
        <SavedRecipeIndex 
          recipes={this.props.recipes}
          filter={this.state.filter}
        />
      </div>
    )
  }
}

export default RecipeBox;