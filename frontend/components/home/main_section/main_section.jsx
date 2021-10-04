import React from "react";
import RecipeThumbnail from "../../recipe/recipe_thumbnail";

class MainSection extends React.Component {

  componentDidMount() {
    this.props.getRecipes("Home")
  }

  render (){
    if (this.props.recipes === undefined) return (<div className="main-section"></div>)

    return (
      <div className="main-section">
        <h1>What to Cook This Week</h1>
        <h3>RECIPES, GUIDES AND MORE FOR THE WEEK OF SEPTEMBER 26TH</h3>

        <div className="main-section-recipes">
          {Object.keys(this.props.recipes).map( (recipeId, i) => (
            <RecipeThumbnail key={i} recipe={this.props.recipes[recipeId]}/>
          ))}
        </div>

      </div>
    )
  }
}

export default MainSection;