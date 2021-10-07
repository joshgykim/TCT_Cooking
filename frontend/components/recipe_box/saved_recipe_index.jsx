import React from "react";
import RecipeThumbnail from "../recipe/recipe_thumbnail";

class SavedRecipeIndex extends React.Component {
  constructor(props) {
    super(props);
    this.allRecipeThumbnails = this.allRecipeThumbnails.bind(this);
  }

  allRecipeThumbnails() {
    return this.props.filter ? ( 
      this.props.filter.map( (recipeId, i) => (
        <RecipeThumbnail key={recipeId} recipe={this.props.recipes[recipeId]}/>
      ))
    ) : ( 
      Object.keys(this.props.recipes).map( (recipeId, i) => (
        <RecipeThumbnail key={recipeId} recipe={this.props.recipes[recipeId]}/>
      ))
    )
  }

  render() {
    const recipeCount = this.props.filter ? this.props.filter.length : Object.keys(this.props.recipes).length;
    const countUnit = recipeCount > 1 ? " recipes" : " recipe";

    return (
      <div className="recipebox-thumbnail-section">
        <h2>Saved Recipes</h2>
        <h3>{recipeCount + countUnit}</h3>
        <div className="recipebox-recipe-index">
          { this.allRecipeThumbnails() }
        </div>
      </div>
    )
  }
}

export default SavedRecipeIndex;