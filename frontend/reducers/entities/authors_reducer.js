import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_USER } from "../../actions/user_actions";

const authorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_AUTHOR:
      return action.author;
    case RECEIVE_USER:
      return {};
    default:
      return state;
  }
}

export default authorsReducer;