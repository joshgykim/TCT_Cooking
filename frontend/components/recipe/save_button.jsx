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

    let button;

    if (this.props.isRecipePage) {
      button = (this.state.saved) ? (
        <button className="button-recipe-page" onClick={ (e) => this.unsaveRecipe(e) } >
          <img className="button-image-recipe-page" src="https://cdn-icons.flaticon.com/png/512/3082/premium/3082351.png?token=exp=1634776154~hmac=b7131a30047b7477e66937b477139264"/>
          &nbsp;Saved&nbsp;
        </button>
      ) : (
        <button className="button-recipe-page" onClick={ (e) => this.saveRecipe(e) } >
          <img className="button-image-recipe-page" src="https://cdn-icons.flaticon.com/png/512/3082/premium/3082331.png?token=exp=1634776136~hmac=0387cd6d7b3d9921bd7f5c966124a6bc"/>
          &nbsp;Save to Recipe Box&nbsp;
        </button>
      )
    } else {
      button = (this.state.saved) ? (
        <img 
          className="saved-button"
          src="https://cdn-icons.flaticon.com/png/512/3082/premium/3082351.png?token=exp=1634776154~hmac=b7131a30047b7477e66937b477139264"
          onClick={ (e) => this.unsaveRecipe(e)}
          />
          ) : (
            <img 
          className="unsaved-button" 
          src="https://cdn-icons.flaticon.com/png/512/3082/premium/3082331.png?token=exp=1634776136~hmac=0387cd6d7b3d9921bd7f5c966124a6bc"
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