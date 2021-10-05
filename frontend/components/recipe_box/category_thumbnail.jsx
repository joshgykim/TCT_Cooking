import React from "react";

class CategoryThumbnail extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return this.props.category.id !== this.props.toggled ? (
      <li onClick={() => {
        this.props.toggleCategory(this.props.category.id)
        return this.props.filterRecipes(this.props.category.recipes)
        }}>
        <img className="category-thumbnail-img" src={this.props.image_url}/>
        <div className="category-thumbnail-text">
          <h3>{this.props.category.name}</h3>
          <h3>{this.props.category.recipes ? this.props.category.recipes.length : null}</h3>
        </div>
      </li>
    ) : ( 
      <li className="category-list-item-clicked">
        <img className="category-thumbnail-img" src={this.props.image_url}/>
        <div className="category-thumbnail-clicked-text">
          <h3>{this.props.category.name}</h3>
          <h3>{this.props.category.recipes ? this.props.category.recipes.length : null}</h3>
        </div>
      </li>
    )
  }
}

export default CategoryThumbnail;