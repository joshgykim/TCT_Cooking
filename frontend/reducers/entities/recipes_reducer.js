import { RECEIVE_RECIPE } from "../../actions/recipe_actions";

const recipesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      nextState[action.recipe.id] = action.recipe;
      return nextState
    default:
      return state;
  }
}

export default recipesReducer;