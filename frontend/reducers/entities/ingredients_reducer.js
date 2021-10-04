import { RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";

const ingredientsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return action.ingredients;
    case RECEIVE_AUTHOR: 
      return {};
    default:
      return state;
  }
}

export default ingredientsReducer;