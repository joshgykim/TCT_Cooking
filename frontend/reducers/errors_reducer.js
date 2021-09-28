import {
  RECEIVE_SESSION_ERRORS
} from "../actions/session_actions";

const errorsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_SESSION_ERRORS:
      return {sessionErrors: action.errors}
    default:
      return {}
  }
}

export default errorsReducer;