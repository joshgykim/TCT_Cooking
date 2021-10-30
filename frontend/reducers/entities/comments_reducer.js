import { RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_COMMENT } from "../../actions/comment_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_CATEGORY } from "../../actions/category_actions";
import { RECEIVE_USER } from "../../actions/user_actions";
import { RECEIVE_COLLECTION } from "../../actions/collection_actions";
import { LOGOUT_CURRENT_USER } from "../../actions/session_actions";

const commentsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      if (action.comments === undefined) return {};
      return action.comments;
    case RECEIVE_COMMENT:
      let nextState = Object.assign({}, state);
      nextState[action.comment.id] = action.comment;
      return nextState;
    case RECEIVE_AUTHOR:
      return {};
    case RECEIVE_CATEGORY:
      return {};
    case RECEIVE_USER:
      return {};
    case RECEIVE_COLLECTION:
      return {};
    case LOGOUT_CURRENT_USER:
      return {};
    default:
      return state;
  }
}

export default commentsReducer;