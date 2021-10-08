import { 
  RECEIVE_RECIPE,
  RECEIVE_RECIPES
} from "../../actions/recipe_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_CATEGORY } from "../../actions/category_actions";
import { RECEIVE_USER } from "../../actions/user_actions";
import { RECEIVE_RECIPE_BOX } from "../../actions/recipe_box_actions";

const recipesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);
  switch(action.type) {
    case RECEIVE_RECIPES:
      return action.recipes;
    case RECEIVE_RECIPE:
      nextState[action.recipe.id] = action.recipe;
      return nextState;
    case RECEIVE_RECIPE_BOX:
      nextState[action.recipe.id].saved = action.recipe.saved;
      return nextState;
    case RECEIVE_AUTHOR:
      return action.recipes;
    case RECEIVE_CATEGORY:
      return action.recipes;
    case RECEIVE_USER:
      return action.recipes;
    default:
      return state;
  }
}

export default recipesReducer;