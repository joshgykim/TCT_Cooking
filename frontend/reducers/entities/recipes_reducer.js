import { 
  RECEIVE_RECIPE,
  RECEIVE_RECIPES
 } from "../../actions/recipe_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";

const recipesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch(action.type) {
    case RECEIVE_RECIPES:
      return action.recipes;
    case RECEIVE_RECIPE:
      nextState[action.recipe.id] = action.recipe;
      return nextState;
    case RECEIVE_AUTHOR:
      return action.recipes;
    default:
      return state;
  }
}

export default recipesReducer;