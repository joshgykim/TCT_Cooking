import { RECEIVE_RECIPE } from "../../actions/recipe_actions";
import { RECEIVE_COMMENT } from "../../actions/comment_actions";

const commentsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_RECIPE:
      return action.comments
    case RECEIVE_COMMENT:
      let nextState = Object.assign({}, state);
      nextState[action.comment.id] = action.comment;
      return nextState;
    default:
      return state;
  }
}

export default commentsReducer;