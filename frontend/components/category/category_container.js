import { connect } from "react-redux";
import Category from "./category";
import { getCategoryData } from "../../actions/category_actions";

const mapStateToProps = (state, ownProps) => ({
  category: state.entities.categories,
  recipes: state.entities.recipes
})

const mapDispatchToProps = (dispatch) => ({
  getCategoryData: (categoryId) => dispatch(getCategoryData(categoryId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Category)