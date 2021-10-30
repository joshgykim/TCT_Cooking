import React from "react";
import { Redirect } from "react-router-dom";

class SaveButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { saved: this.props.saved }
    this.saveRecipe = this.saveRecipe.bind(this);
    this.unsaveRecipe = this.unsaveRecipe.bind(this);
  }

  saveRecipe(e) {
    e.preventDefault();
    e.stopPropagation();

    if (!this.props.currentUser) {
      this.props.openModal("login");
      return;
    }

    this.setState({ saved: !this.state.saved });
    this.props.saveRecipe({ 
      user_id: this.props.currentUser.id,
      recipe_id: this.props.recipe.id
    });
  }

  unsaveRecipe(e) {
    e.preventDefault();
    e.stopPropagation();
    this.setState({ saved: !this.state.saved });
    this.props.unsaveRecipe({
      user_id: this.props.currentUser.id,
      recipe_id: this.props.recipe.id
    });
  }

  render() {

    let button;

    if (this.props.isRecipePage) {
      button = (this.state.saved) ? (
        <button className="button-recipe-page" onClick={ (e) => this.unsaveRecipe(e) } >
          <img className="button-image-recipe-page" src={window.saved}/>
          &nbsp;Saved&nbsp;
        </button>
      ) : (
        <button className="button-recipe-page" onClick={ (e) => this.saveRecipe(e) } >
          <img className="button-image-recipe-page" src={window.unsaved}/>
          &nbsp;Save to Recipe Box&nbsp;
        </button>
      )
    } else {
      button = (this.state.saved) ? (
        <img 
          className="saved-button"
          src={window.saved}
          onClick={ (e) => this.unsaveRecipe(e)}
          />
          ) : (
            <img 
          className="unsaved-button" 
          src={window.unsaved}
          onClick={ (e) => this.saveRecipe(e)}
        />
      )
    }
    return (
      <div>
        {button}
      </div>
    )
  }
}

export default SaveButton;