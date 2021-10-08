import React from "react";
import RecipeThumbnail from "../recipe/recipe_thumbnail";

class Collection extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getCollectionData(this.props.match.params.collectionId);
  }

  componentDidUpdate(prevProp) {
    if (this.props.match.params.collectionId != prevProp.match.params.collectionId) {
      this.props.getCollectionData(this.props.match.params.collectionId);
    }
  }

  render() {
    if (this.props.collection.name === undefined) return (<div></div>)

    const recipeKeys = Object.keys(this.props.recipes);

    return (
      <div className="collection-page">
        <div className="collection-header">
          <h2>{this.props.collection.name}</h2>
          <h4>{this.props.collection.description}</h4>
          <hr/>
        </div>
        <div className="collection-recipes">
          <h5>{`${recipeKeys.length} ` + (recipeKeys.length > 1 ? "results" : "result")}</h5>
          <div className="collection-recipes-thumbnails">
            {recipeKeys.map( (recipeId, i) => (
              <RecipeThumbnail key={recipeId} recipe={this.props.recipes[recipeId]}/>
            ))}
          </div>
        </div>
      </div>
    )
  }
}

export default Collection