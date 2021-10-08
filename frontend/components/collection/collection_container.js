import { connect } from "react-redux";
import Collection from "./collection";
import { getCollectionData } from "../../actions/collection_actions";

const mapStateToProps = (state, ownProps) => ({
  collection: state.entities.collections,
  recipes: state.entities.recipes
})

const mapDispatchToProps = (dispatch) => ({
  getCollectionData: (collectionId) => dispatch(getCollectionData(collectionId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Collection)