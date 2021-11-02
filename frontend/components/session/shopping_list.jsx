import React from "react";

class ShoppingList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getShoppings(this.props.currentUser.id)
  }

  render() {
    return (
      <div className="shopping-recipe-popup" onClick={e => e.stopPropagation()}>
        <div className="shopping-recipe-heading">
          <span className="shopping-recipe-heading-title">
            YOUR GROCERY LIST 
          </span>
          <span className="shopping-recipe-heading-number">
            |&nbsp;&nbsp;&nbsp;{` ${Object.keys(this.props.shoppings).length}`} {this.props.shoppings.length > 1 ? "recipes" : "recipe"}
          </span>
        </div>
        {
          Object.values(this.props.shoppings).map( (recipe, j) => {
            return (
              <div key={recipe.id} className="shopping-recipe">
                <h1>{recipe.title}</h1>
                <h2>{recipe.yield}</h2>
                <ul>
                  {
                    Object.values(recipe.ingredients).map( (ingredientObj, i) => {
                      return (
                        <div>
                          <li key={(j+1) * i}>
                            {ingredientObj.quantity}
                            {ingredientObj.quantity ? " " : ""}
                            {ingredientObj.unit}
                            {ingredientObj.unit ? " " : ""}
                            {ingredientObj.name}
                          </li>
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