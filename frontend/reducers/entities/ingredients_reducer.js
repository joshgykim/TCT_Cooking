import { RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_CATEGORY } from "../../actions/category_actions";
import { RECEIVE_USER } from "../../actions/user_actions";

const ingredientsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return action.ingredients;
    case RECEIVE_AUTHOR: 
      return {};
    case RECEIVE_CATEGORY:
      return {};
    case RECEIVE_USER:
      return {};
    default:
      return state;
  }
}

export default ingredientsReducer;