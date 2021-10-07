import React from "react";
import { Link } from 'react-router-dom';
import SaveButtonContainer from './save_button_container';

class RecipeThumbnail extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="recipe-thumbnail">
        <Link to={`/recipes/${this.props.recipe.id}`}>
          <img className="recipe-thumbnail-image" src={this.props.recipe.image_url} />
          <div className="recipe-summary">
            <div className="recipe-TA">
              <h3 className="thumb-title">{this.props.recipe.title}</h3>
              <h4 className="thumb-author">{this.props.recipe.authorName}</h4>
            </div>
            <div className="recipe-TS">
              <h4 className="thumb-time">{this.props.recipe.time}</h4> 
            </div>
              <SaveButtonContainer recipeId={this.props.recipe.id} />
          </div>
        </Link>
      </div>
    )
  }
}

export default RecipeThumbnail;