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
      <div className="session-form-popup">
        {
          Object.values(this.props.shoppings).map( (recipe, j) => {
            return (
              <div key={recipe.id} className="shopping-recipe">
                <h1>{recipe.title}</h1>
                <ul>
                  {
                    Object.values(recipe.ingredients).map( (ingredientObj, i) => {
                      return (
                        <li key={(j+1) * i}>
                          {ingredientObj.quantity + ingredientObj.unit + ingredientObj.name}
                        </li>
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