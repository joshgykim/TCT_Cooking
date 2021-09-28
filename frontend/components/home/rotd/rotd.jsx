import React from "react";
import { Redirect } from "react-router-dom";


class ROTD extends React.Component {
  constructor(props) {
    super(props);
    this.showRecipe = this.showRecipe.bind(this);
  }

  showRecipe() {
    console.log("clicked");
  }

  render() {
    return (
      <div className="rotd" onClick={this.showRecipe}>
        <img className="rotd-image" src={this.props.recipe.image_url}/>
        <div className="rotd-label">
          <h1>{this.props.recipe.title}</h1>
          <h3>{this.props.recipe.description}</h3>
          <h3>By {this.props.recipe.author}</h3>
          <div className="rotd-label-circle">
            <h3>RECIPE OF THE DAY</h3>
          </div>
        </div>
      </div>
    )
  }
}

export default ROTD;