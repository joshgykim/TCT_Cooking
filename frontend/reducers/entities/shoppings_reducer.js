import { LOGOUT_CURRENT_USER } from "../../actions/session_actions";
import { 
  RECEIVE_SHOPPINGS,
  RECEIVE_SHOPPING
} from "../../actions/shopping_actions";

const shoppingsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_SHOPPINGS:
      return action.shoppings;
    case RECEIVE_SHOPPING:
      let nextState = Object.assign({}, state);
      nextState[Object.keys(action.shopping)[0]] = Object.values(action.shopping)[0];
      return nextState;
    case LOGOUT_CURRENT_USER:
      return {};
    default:
      return state;
  }
}

export default shoppingsReducer;