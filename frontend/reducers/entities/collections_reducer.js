import { RECEIVE_RECIPES } from "../../actions/recipe_actions";

const collectionsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPES:
      return action.collections
    default:
      return state;
  }
}

export default collectionsReducer;