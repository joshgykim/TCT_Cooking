import React from "react";
import { Link } from 'react-router-dom';

class Recipe extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchRecipe(this.props.recipe.id);
  }

  render() {
    const categoryLinks = Object.keys(this.props.categories).map( (categoryId, i) => {
      return (
        <div key={i}>
          <Link to={`/categories/${categoryId}`}>
            {this.props.categories[categoryId].name}
          </Link>
          <h3>
            { (i === Object.keys(this.props.categories).length - 1 ? "" : ", ")}
          </h3>
        </div>
      )
    })

    const preparationList = (
      <ol>
        {this.props.preparations.split("-$%-").map( (step, i) => {
          <li key={i}>
            {step}
          </li>
          })
        }
      </ol>
    )

    return (
      <div className="recipe">
        <div className="recipe-heading">
          <h1>{this.props.recipe.title}</h1>
          <h3>{this.props.recipe.author}</h3>
        </div>

        <div className="recipe-intro">
          <div className="recipe-intro-facts">
            <h3>YIELD {this.props.recipe.yield}</h3>
            <h3>TIME {this.props.recipe.time}</h3>
          </div>
          <div className="recipe-intro-description">
            <h3>{this.props.recipe.description}</h3>
            <img src={this.props.recipe.img_url}/>
          </div>
        </div>

        <div className="recipe-categories">
          {categoryLinks}
        </div>

        {/* PLACEHOLDER FOR RATINGS */}

        <div className="recipe-instructions">
          {preparationList}
        </div>
      </div>
    )
  }
}

export default Recipe;