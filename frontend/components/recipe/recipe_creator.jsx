import React from "react";
import { postRecipe, postIngredient } from "../../util/recipe_util";

class RecipeCreator extends React.Component {
  constructor(props) {
    super(props);
    
    // // RECIPE
    // this.state = {
    //   title: "",
    //   description: "",
    //   yield: "",
    //   time: "",
    //   preparations: "",
    //   image_url: "",
    //   author_id: 2
    // };


    // INGREDIENT
    this.state = {
      name: "",
      quantity: "",
      unit: "",
      recipe_id: 18
    }

    this.updateField = this.updateField.bind(this);
    this.handleSubmitRecipe = this.handleSubmitRecipe.bind(this);
    this.handleSubmitIngredient = this.handleSubmitIngredient.bind(this);
  }

  updateField(e, field) {
    e.preventDefault();
    this.setState({ [field]: e.currentTarget.value });
  }

  handleSubmitRecipe(e) {
    e.preventDefault();
    postRecipe(this.state).then(res => console.log(res), fail => console.log(fail))
    this.setState({
      title: "",
      description: "",
      yield: "",
      time: "",
      preparations: "",
      image_url: "",
      author_id: 2
    })
  }

  handleSubmitIngredient(e) {
    e.preventDefault();
    postIngredient(this.state).then(res => console.log(res), fail => console.log(fail))
    this.setState({
      name: "",
      quantity: "",
      unit: "",
      recipe_id: 18
    })
  }

  render() {
    return (
      <div>
        {/* <form className="seeder" onSubmit={(e) => this.handleSubmitRecipe(e)}>
          <label>Title:
            <br/>
            <input
              type="text"
              value={this.state.title}
              onChange={(e) => this.updateField(e, "title")}
            />
          </label>
          
          <label>Description:
          <br/>

            <textarea
              value={this.state.description}
              onChange={(e) => this.updateField(e, "description")}
            />
          </label>

          <label>yield:
          <br/>

            <input
              type="text"
              value={this.state.yield}
              onChange={(e) => this.updateField(e, "yield")}
            />
          </label>
          
          <label>time:
          <br/>

            <input
              type="text"
              value={this.state.time}
              onChange={(e) => this.updateField(e, "time")}
            />
          </label>
          
          <label>preparations:
          <br/>

            <textarea
              value={this.state.preparations}
              onChange={(e) => this.updateField(e, "preparations")}
            />
          </label>

          <label>image_url:
          <br/>

            <input
              type="text"
              value={this.state.image_url}
              onChange={(e) => this.updateField(e, "image_url")}
            />
          </label>
          <br/>

          <button>UPLOAD RECIPE</button>
          
        </form> */}


        <form onSubmit={(e) => this.handleSubmitIngredient(e)}>
          <label>ingredient name:
            <br/>
            <input
              type="text"
              value={this.state.name}
              onChange={(e) => this.updateField(e, "name")}
            />
          </label>
          <br/>

          <label>quantity:
            <br/>
            <input
              type="text"
              value={this.state.quantity}
              onChange={(e) => this.updateField(e, "quantity")}
            />
          </label>
          <br/>

          <label>unit:
            <br/>
            <input
              type="text"
              value={this.state.unit}
              onChange={(e) => this.updateField(e, "unit")}
            />
          </label>
          <br/>

          <button>add ingredient</button>
        </form>
      </div>
    )
  }

}

export default RecipeCreator;