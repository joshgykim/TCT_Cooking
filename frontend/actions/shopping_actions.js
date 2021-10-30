import {
  fetchShoppings,
  postShopping
} from "../util/shopping_util";

export const RECEIVE_SHOPPINGS = "RECEIVE_SHOPPINGS";
export const RECEIVE_SHOPPING = "RECEIVE_SHOPPING";

const receiveShoppings = payload => {
  return {
    type: RECEIVE_SHOPPINGS,
    shoppings: ( payload.shopping !== undefined ) ? payload.shopping : {}
  }
}

const receiveShopping = payload => ({
  type: RECEIVE_SHOPPING,
  shopping: payload
})

export const getShoppings = userId => dispatch => fetchShoppings(userId)
  .then( payload => dispatch(receiveShoppings(payload)))

export const saveIngredients = recipeId => dispatch => postShopping(recipeId)
  .then( payload => dispatch(receiveShopping(payload)))