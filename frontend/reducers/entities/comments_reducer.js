import { RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_COMMENT } from "../../actions/comment_actions";
import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_CATEGORY } from "../../actions/category_actions";
import { RECEIVE_USER } from "../../actions/user_actions";

const commentsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return action.comments
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
    default:
      return state;
  }
}

export default commentsReducer;