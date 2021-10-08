import { RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_CATEGORY } from "../../actions/category_actions";
import { RECEIVE_USER } from "../../actions/user_actions";
import { RECEIVE_COLLECTION } from "../../actions/collection_actions";

const categoriesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CATEGORY:
      return action.category
    case RECEIVE_RECIPE:
      return action.categories;
    case RECEIVE_USER:
      return action.categories;
    case RECEIVE_AUTHOR:
      return {};
    case RECEIVE_COLLECTION:
      return {};
    default:
      return state;
  }
}

export default categoriesReducer;