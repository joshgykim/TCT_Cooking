import React from "react";
import { Link } from 'react-router-dom';
import CommentsIndex from "./comments_index";
import NewCommentFormContainer from "./new_comment_form_container";
import SaveButtonContainer from "./save_button_container";

class Recipe extends React.Component { 
  constructor(props) {
    super(props);
    this.state = { rating: 0 }
    this.saveIngredients = this.saveIngredients.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  saveIngredients() {
    this.props.saveIngredients(this.props.recipe.id);
  }

  handleClick(star) {
    return (e) => {
      console.log("clicked");
      this.props.rateRecipe({recipeId: this.props.recipe.id, rating: star})
    }
  }

  componentDidMount() {
    this.props.getRecipeData(this.props.match.params.recipeId);
  }

  componentDidUpdate(prevProp) {
    if (this.props.match.params.recipeId !== prevProp.match.params.recipeId) {
        this.props.getRecipeData(this.props.match.params.recipeId);
    }
  }

  starRatings() {
    if (this.props.recipe.rating.userRating !== 0) {
      return (
        <div className="rating-form-user">
          <label>
            {this.props.recipe.rating.userRating < 1 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="one-star"
              onClick={this.handleClick(1)}
            />
          </label>
          <label>
            {this.props.recipe.rating.userRating < 2 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="two-stars"
              onClick={this.handleClick(2)}
            />
          </label>
          <label>
            {this.props.recipe.rating.userRating < 3 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="three-stars"
              onClick={this.handleClick(3)}
            />
          </label>
          <label>
            {this.props.recipe.rating.userRating < 4 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="four-stars"
              onClick={this.handleClick(4)}
            />
          </label>
          <label>
            {this.props.recipe.rating.userRating < 5 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="five-stars"
              onClick={this.handleClick(5)}
            />
          </label>
        </div>
      )
    } else {
      let averageRating = Math.floor(parseFloat(this.props.recipe.rating.average));
      return(
        <div className="rating-form">
          <label>
            {averageRating < 1 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="one-star"
              onClick={this.handleClick(1)}
            />
          </label>
          <label>
            {averageRating < 2 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="two-stars"
              onClick={this.handleClick(2)}
            />
          </label>
          <label>
            {averageRating < 3 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="three-stars"
              onClick={this.handleClick(3)}
            />
          </label>
          <label>
            {averageRating < 4 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="four-stars"
              onClick={this.handleClick(4)}
            />
          </label>
          <label>
            {averageRating < 5 ? (
              <i className="far fa-star"></i>
            ) : (
              <i className="fas fa-star"></i>
            )}
            <input
              type="radio"
              value="five-stars"
              onClick={this.handleClick(5)}
            />
          </label>
        </div>
      )
    }
  }

  render() {
    if (!this.props.recipe || this.props.recipe.preparations === undefined) return (<div className="recipe"></div>)

    const categoryLinks = (
      <div className="recipe-categories">
        {Object.keys(this.props.categories).map( (categoryId, i) => (
          <div key={i}>
            <Link to={`/categories/${categoryId}`}>
              <span>
                {this.props.categories[categoryId].name}
              </span>
            </Link>
            <span>
              {(i === Object.keys(this.props.categories).length - 1 ? "": ",")}
              &nbsp;
            </span>
          </div>
        ))}
      </div>
    )

    const preparationList = (
      <div>
        <h2 className="recipe-preparation-label">PREPARATIONS</h2>
        <ol className="recipe-preparations">
          {this.props.recipe.preparations.split("-$%-").map( (step, i) => (
            <div key={i}>
              <h2>Step {i+1}</h2>
              <li>
                {step}
              </li>
              <br></br>
            </div>
          ))}
        </ol>
      </div>
    )

    const ingredientList = (
      <div>
        <h2 className="recipe-ingredient-label">INGREDIENTS</h2>
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
        { this.props.shoppingList[this.props.recipe.id] ? <div className="saved-ingredients">
          <h3>Added &nbsp;|&nbsp;&nbsp;</h3>
          <button 
            className="saved_ingredient-modal"
            onClick={() => this.props.openModal("shopping")}>
            Open Shopping List
          </button>
        </div> :
        <div className="save-ingredients">
          <button
            onClick={this.saveIngredients}>
            &nbsp;&nbsp;Add to Your Shopping List&nbsp;&nbsp;
          </button>
        </div>}
      </div>
    )

    return (
      <div className="recipe">
        <div className="recipe-heading">
          <h1>{this.props.recipe.title}</h1>
          <Link to={`/authors/${this.props.recipe.author.id}`}>
            <span>{"By" + " "}</span>
            <span className="recipe-author-name">{this.props.recipe.author.name}</span>
          </Link>
        </div>
        <hr/>
        <div className="recipe-intro">
          <div className="recipe-intro-facts">
            <h3>
              <span className="recipe-intro-fact-key">{"YIELD" + "   "}</span>
              <span className="recipe-intro-fact-value">{this.props.recipe.yield}</span>
            </h3>
            <h3>
              <span className="recipe-intro-fact-key">{"TIME" + "    "}</span>
              <span className="recipe-intro-fact-value">{this.props.recipe.time}</span>
            </h3>
            <SaveButtonContainer recipeId={this.props.recipe.id} isRecipePage={true}/>
          </div>
          <div className="recipe-intro-description">
            <h3>{this.props.recipe.description}</h3>
            <img src={this.props.recipe.image_url}/>
          </div>
        </div>
        <hr className="recipe-cat-rat-br"/>
        <div className="recipe-cat-rat">
          <span>
            {categoryLinks}
          </span>
          <div className="recipe-ratings">
            {this.starRatings()}
          </div>
        </div>
        <hr/>

        <div className="recipe-instructions">
          {ingredientList}
          {preparationList}
        </div>

        <div className="recipe-comments">
          <div className="recipe-comments-filler"></div>
          <div className="recipe-comments-display">
            <NewCommentFormContainer recipeId={this.props.match.params.recipeId}/>
            <hr className="comment-break"/>
            <CommentsIndex comments={this.props.comments}/>
          </div>
        </div>
        <SaveButtonContainer recipeId={this.props.recipe.id} isRecipePage={true}/>
      </div>
    )
  }
}

export default Recipe;