import React from "react";
import { Link } from 'react-router-dom';

const RecipeThumbnail = (props) => (
  <div className="recipe-thumbnail">
    {/* PLACEHOLDER */}
    <Link to={`/recipes/${props.recipe.id}`}>
      <img src={props.recipe.image_url} />
      <div className="recipe-summary">
        <div className="recipe-TA">
          <h3 className="thumb-title">{props.recipe.title}</h3>
          <h4 className="thumb-author">{props.recipe.authorName}</h4>
        </div>
        <div>
          <h4 className="thumb-time">{props.recipe.time}</h4> 
        </div>
      </div>
    </Link>
  </div>
)

export default RecipeThumbnail;