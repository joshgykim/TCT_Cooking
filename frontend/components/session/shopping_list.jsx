import React from "react";

class ShoppingList extends React.Component {
  constructor(props) {
    super(props);
    this.deleteShopping = this.deleteShopping.bind(this);
    this.deleteIngredient = this.deleteIngredient.bind(this);
  }

  componentDidMount() {
    this.props.getShoppings(this.props.currentUser.id)
  }

  deleteShopping(recipeId) {
    this.props.removeShopping(recipeId)
  }

  deleteIngredient(recipeId, ingredientId) {
    this.props.removeIngredient({recipeId: recipeId, ingredientId: ingredientId})
  }

  render() {
    return (
      <div className="shopping-recipe-popup" onClick={e => e.stopPropagation()}>
        <div className="shopping-recipe-heading">
          <span className="shopping-recipe-heading-title">
            YOUR GROCERY LIST 
          </span>
          <span className="shopping-recipe-heading-number">
            |&nbsp;&nbsp;&nbsp;{` ${Object.keys(this.props.shoppings).length}`} recipes
          </span>
        </div>
        {
          Object.values(this.props.shoppings).map( (recipe, j) => {
            return (
              <div key={recipe.id} className="shopping-recipe">
                <button
                  className="shopping-recipe-delete"
                  onClick={() => this.deleteShopping(recipe.id)}>
                  Remove
                </button>
                <h1>{recipe.title}</h1>
                <h2>{recipe.yield}</h2>
                <ul>
                  {
                    Object.values(recipe.ingredients).map( (ingredientObj, i) => {
                      return (
                        <div className="shopping-ingredient-list" key={(j+1) * i}>
                          <li>
                            {ingredientObj.quantity}
                            {ingredientObj.quantity ? " " : ""}
                            {ingredientObj.unit}
                            {ingredientObj.unit ? " " : ""}
                            {ingredientObj.name}
                          </li>
                          <button
                            className="remove-ingredient"
                            onClick={() => this.deleteIngredient(recipe.id, Object.keys(recipe.ingredients)[i])}
                          >X</button>
                          { i === Object.values(recipe.ingredients).length - 1 ? null : <hr className="ingredient-divider"/>}
                        </div>
                      )
                    })
                  }
                </ul>
                <br/>
              </div>
            )
          })
        }
      </div>
    )
  }
}

export default ShoppingList;