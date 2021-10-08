import { RECEIVE_AUTHOR } from "../../actions/author_actions";
import { RECEIVE_USER } from "../../actions/user_actions";
import { RECEIVE_COLLECTION } from "../../actions/collection_actions";

const authorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_AUTHOR:
      return action.author;
    case RECEIVE_USER:
      return {};
    case RECEIVE_COLLECTION:
      return {};
    default:
      return state;
  }
}

export default authorsReducer;