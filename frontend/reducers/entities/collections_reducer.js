import { RECEIVE_RECIPES, RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_COLLECTION } from "../../actions/collection_actions";
import { RECEIVE_USER } from "../../actions/user_actions";
import { RECEIVE_CATEGORY } from "../../actions/category_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";

const collectionsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPES:
      return action.collections;
    case RECEIVE_COLLECTION:
      return action.collection;
    case RECEIVE_USER:
      return {};
    case RECEIVE_RECIPE:
      return {};
    case RECEIVE_AUTHOR:
      return {};
    case RECEIVE_CATEGORY:
      return {};
    default:
      return state;
  }
}

export default collectionsReducer;