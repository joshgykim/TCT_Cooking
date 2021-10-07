import React from "react";


class ROTD extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="rotd">
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