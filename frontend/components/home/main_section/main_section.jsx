import React from "react";
import RecipeThumbnail from "../../recipe/recipe_thumbnail";

class MainSection extends React.Component {

  componentDidMount() {
    this.props.getRecipes("Home")
  }

  render() {
    if (this.props.recipes === undefined) return (<div className="main-section"></div>)

    let options = {year: 'numeric', month: 'long', day: 'numeric' };
    let date = new Intl.DateTimeFormat('en-US', options).format(Date.now())

    return (
      <div className="main-section">
        <h1>What to Cook This Week</h1>
        <h3>RECIPES, GUIDES AND MORE FOR THE WEEK OF {date.toString().toUpperCase()}</h3>
        <hr/>
        <div className="josh-suggestion">
          <h1>Josh's Suggestions</h1>
          <h3>Recipes selected throughout the week by Josh Kim-Biggs, creator of The California Times Cooking.</h3>
        </div>
        <div className="main-section-recipes">
          {Object.keys(this.props.recipes).map( (recipeId, i) => (
            <RecipeThumbnail key={recipeId} recipe={this.props.recipes[recipeId]}/>
          ))}
        </div>

      </div>
    )
  }
}

export default MainSection;