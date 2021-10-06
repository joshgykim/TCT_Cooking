import React from "react";

class SaveButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { saved: this.props.saved }
    this.saveRecipe = this.saveRecipe.bind(this);
    this.unsaveRecipe = this.unsaveRecipe.bind(this);

  }

  saveRecipe(e) {
    console.log("saving")
    e.preventDefault();
    e.stopPropagation();
    this.setState({ saved: !this.state.saved });
    this.props.saveRecipe({ 
      user_id: this.props.currentUser.id,
      recipe_id: this.props.recipe.id
    });
  }

  unsaveRecipe(e) {
    console.log("unsaving")
    e.preventDefault();
    e.stopPropagation();
    this.setState({ saved: !this.state.saved });
    this.props.unsaveRecipe({
      user_id: this.props.currentUser.id,
      recipe_id: this.props.recipe.id
    });
  }

  render() {
    return (this.state.saved) ? (
      <img 
        className="saved-button"
        src="https://img-premium.flaticon.com/png/512/880/premium/880612.png?token=exp=1633539970~hmac=9447639914a4a3aa3f70fe7489a842ce"
        onClick={ (e) => this.unsaveRecipe(e)}
        />
        ) : (
          <img 
        className="unsaved-button" 
        src="https://img-premium.flaticon.com/png/512/880/premium/880571.png?token=exp=1633539970~hmac=cdc0725c819ffe24e0ab4dd8bdf950fd"
        onClick={ (e) => this.saveRecipe(e)}
      />
    )
  }
}

export default SaveButton;