import React from "react";
import CategoryThumbnailContainer from "./category_thumbnail_container";

class SavedCategoryIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = {toggledCategory: 0}
    this.toggleCategory = this.toggleCategory.bind(this);
  }

  toggleCategory(categoryId) {
    this.setState({toggledCategory: categoryId})
  }

  render() {
    return (
      <div className="recipebox-category-index">
        <div className="recipebox-saved-recipe" onClick={ () => {
          this.props.filterRecipes(null);
          this.toggleCategory(0);
        }}>
          <h3 className="saved-recipe-text">Saved Recipes</h3>
          <h3 className="saved-recipe-text">{this.props.recipeNum}</h3>
        </div>
        <ul className="recipebox-category-list">
          <h3>BY CATEGORY</h3>
          {Object.keys(this.props.categories).map( (categoryId, i) => (
            <CategoryThumbnailContainer
              key={i}
              category={this.props.categories[categoryId]}
              filterRecipes={(filter) => this.props.filterRecipes(filter)}
              toggleCategory={(catId) => this.toggleCategory(catId)}
              toggled={this.state.toggledCategory}
            />
          ))}
        </ul>
      </div>
    )
  }
}

export default SavedCategoryIndex;