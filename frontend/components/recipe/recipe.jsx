import React from "react";

class Recipe extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchRecipe(this.props.recipe.id);
  }

  render() {
    return (
      <div className="recipe">
        {/* <div className="recipe-heading">
          <h1>{this.props.recipe.title}</h1>
          <h3>{this.props.recipe.author}</h4>
        </div>
        <div className="recipe-description">
          <h3>{}</h3>
        </div> */}
      </div>
    )
  }
}

export default Recipe;