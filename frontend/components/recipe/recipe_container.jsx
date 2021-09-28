import { connect } from "react-redux";
import Recipe from "./recipe";

const mapStateToProps = (state, ownProps) => ({
  recipe: state.entities.recipes[ownProps.match.params.recipeId]
})

const mapDispatchToProps = (dispatch) => ({

})

export default connect(mapStateToProps, mapDispatchToProps)(Recipe);