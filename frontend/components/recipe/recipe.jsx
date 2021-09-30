import React from "react";
import { Link } from 'react-router-dom';

class Recipe extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getRecipeData(this.props.match.params.recipeId);
  }

  componentWillUpdate() {
    this.props.getRecipeData(this.props.match.params.recipeId);
  }

  render() {
    if (this.props.recipe === null) return (<div className="recipe"></div>)

    const categoryLinks = Object.keys(this.props.categories).map( (categoryId, i) => (
        <div key={i}>
          <Link to={`/categories/${categoryId}`}>
            {this.props.categories[categoryId].name}
            { (i === Object.keys(this.props.categories).length - 1 ? "" : ", ")}
          </Link>
        </div>
      )
    )

    const preparationList = (
      <ol>
        {this.props.recipe.preparations.split("-$%-").map( (step, i) => (
          <div key={i}>
            <h2>Step {i+1}:</h2>
            <li>
              {step}
            </li>
            <br></br>
          </div>
        ))}
      </ol>
    )

    const ingredientList = (
      <ul className="recipe-ingredients">
        { Object.keys(this.props.ingredients).map( (ingredientId, i) => (
            <li key={i}>
              <h3 className="ingredient-quantity">
                {this.props.ingredients[ingredientId].quantity}
              </h3>
              <h3 className="ingredient-details">
                {this.props.ingredients[ingredientId].unit + " "}
                {this.props.ingredients[ingredientId].name}
              </h3>
            </li>
          ))
        }
      </ul>
    )

    return (
      <div className="recipe">
        <div className="recipe-heading">
          <h1>{this.props.recipe.title}</h1>
          <Link to={`/authors/${this.props.recipe.author.id}`}>
            {this.props.recipe.author.name}
          </Link>
        </div>

        <div className="recipe-intro">
          <div className="recipe-intro-facts">
            <h3>YIELD {this.props.recipe.yield}</h3>
            <h3>TIME {this.props.recipe.time}</h3>
          </div>
          <div className="recipe-intro-description">
            <h3>{this.props.recipe.description}</h3>
            <img src={this.props.recipe.image_url}/>
          </div>
        </div>

        <div className="recipe-categories">
          {categoryLinks}
        </div>

        {/* PLACEHOLDER FOR RATINGS */}

        <div className="recipe-instructions">
          {ingredientList}
          {preparationList}
        </div>
      </div>
    )
  }
}

export default Recipe;