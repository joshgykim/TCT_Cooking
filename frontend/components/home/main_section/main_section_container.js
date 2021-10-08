import MainSection from "./main_section";
import { connect } from "react-redux";
import { getRecipes } from "../../../actions/recipe_actions";

const mapStateToProps = (state) => ({
  recipes: state.entities.recipes,
  currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
  getRecipes: (mode) => dispatch(getRecipes(mode))
})

export default connect(mapStateToProps, mapDispatchToProps)(MainSection)