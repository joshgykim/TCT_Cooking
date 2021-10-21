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
          <img className="button-image-recipe-page" src="https://cdn-icons.flaticon.com/png/512/3082/premium/3082351.png?token=exp=1634776154~hmac=b7131a30047b7477e66937b477139264"/>
          &nbsp;Saved to Recipe Box&nbsp;
        </button>
      )
    } else {
      button = (
        <button className="collection-button" onClick={ (e) => this.saveCollection(e) } >
          <img className="button-image-recipe-page" src="https://cdn-icons.flaticon.com/png/512/3082/premium/3082331.png?token=exp=1634776136~hmac=0387cd6d7b3d9921bd7f5c966124a6bc"/>
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