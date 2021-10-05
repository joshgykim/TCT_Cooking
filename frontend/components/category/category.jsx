import React from "react";
import RecipeThumbnail from "../recipe/recipe_thumbnail";

class Category extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    
    this.props.getCategoryData(this.props.match.params.categoryId);
  }

  componentDidUpdate(prevProp) {
    if (this.props.match.params.categoryId != prevProp.match.params.categoryId) {
      this.props.getCategoryData(this.props.match.params.categoryId);
    }
  }

  render() {
    if (this.props.category === undefined) return (<div className="category"></div>)

    return (
      <div className="category-page">
        <h2>{this.props.category.name} Recipes</h2>
        <hr/>
        <div className="category-recipes-thumbnails">
          {Object.keys(this.props.recipes).map( (recipeId, i) => (
            <RecipeThumbnail key={i} recipe={this.props.recipes[recipeId]}/>
          ))}
        </div>
      </div>
    )
  }
}

export default Category;