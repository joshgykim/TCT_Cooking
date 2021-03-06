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
      <div>
        <SavedCategoryIndex
          filterRecipes={(arr) => this.filterRecipes(arr)}
          categories={this.props.categories}
          recipeNum={Object.keys(this.props.recipes).length}
        />
        <div className="recipebox">
          <div className="category-index-filler"/>
          <SavedRecipeIndex 
            recipes={this.props.recipes}
            filter={this.state.filter}
          />
        </div>
      </div>
    )
  }
}

export default RecipeBox;