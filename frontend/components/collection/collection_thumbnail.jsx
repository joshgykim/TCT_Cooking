import React from "react";
import { Link } from "react-router-dom";
import CollectionSaveButtonContainer from "./collection_save_button_container";

class CollectionThumbnail extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="collection-thumbnail">
        <Link to={`/collections/${this.props.collectionId}`}>
          <img className="collection-thumbnail-image" src={this.props.collection.image_url} />
          <h1>{this.props.collection.name}</h1>
          <CollectionSaveButtonContainer collectionId={this.props.collectionId}/>
        </Link>
      </div>
    )
  }
}

export default CollectionThumbnail;