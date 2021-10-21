import React from "react";

class CollectionSaveButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { saved: false }
    this.saveCollection = this.saveCollection.bind(this);
    this.unsaveCollection = this.unsaveCollection.bind(this);
  }

  saveCollection(e) {
  }

  unsaveCollection(e) {
  }

  render() {

    let button;

    if (this.state.saved) {
      button = (
        <button className="collection-button" onClick={ (e) => this.unsaveCollection(e) } >
          <img className="button-image-recipe-page" src={window.saved}/>
          &nbsp;Saved to Recipe Box&nbsp;
        </button>
      )
    } else {
      button = (
        <button className="collection-button" onClick={ (e) => this.saveCollection(e) } >
          <img className="button-image-recipe-page" src={window.unsaved}/>
          &nbsp;Save This Collection&nbsp;
        </button>
      )
    }

    return (
      <div>
        {button}
      </div>
    )
  }
}

export default CollectionSaveButton;