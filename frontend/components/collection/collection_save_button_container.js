// import { 
//   saveCollection,
//   unsaveCollection
// } from "../../actions/recipe_box_actions"
import { connect } from "react-redux";
import CollectionSaveButton from "./collection_save_button";

const mapStateToProps = (state, ownProps) => ({
  // saved: state.entities.recipes[ownProps.recipeId].saved,
  // recipe: state.entities.recipes[ownProps.recipeId],
  // currentUser: state.session.currentUser,
  // isRecipePage: ownProps.isRecipePage
  saved: state.entities.collections[ownProps.collectionId],
  collection: state.entities.collections[ownProps.collectionId],
  currentUser: state.session.currentUser,
})

const mapDispatchToProps = dispatch => ({
  // saveRecipe: (recipeBoxData) => dispatch(createRecipeBox(recipeBoxData)),
  // unsaveRecipe: (recipeBoxData) => dispatch(deleteRecipeBox(recipeBoxData))
})

export default connect(null, null)(CollectionSaveButton);