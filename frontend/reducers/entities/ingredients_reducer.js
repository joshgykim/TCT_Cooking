import { RECEIVE_RECIPE } from "../../actions/recipe_actions";

const ingredientsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return action.categories
    default:
      return state;
  }
}

export default ingredientsReducer;