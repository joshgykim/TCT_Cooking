import {
  fetchShoppings,
  postShopping,
  destroyShopping,
  patchShopping
} from "../util/shopping_util";

export const RECEIVE_SHOPPINGS = "RECEIVE_SHOPPINGS";
export const RECEIVE_SHOPPING = "RECEIVE_SHOPPING";
export const REMOVE_SHOPPING = "REMOVE_SHOPPING";

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

const deleteShopping = payload => ({
  type: REMOVE_SHOPPING,
  shopping: payload
})

export const getShoppings = userId => dispatch => fetchShoppings(userId)
  .then( payload => dispatch(receiveShoppings(payload)))

export const saveIngredients = recipeId => dispatch => postShopping(recipeId)
  .then( payload => dispatch(receiveShopping(payload)))

export const removeShopping = recipeId => dispatch => destroyShopping(recipeId)
  .then( payload => dispatch(deleteShopping(payload)))

export const removeIngredient = data => dispatch => patchShopping(data)
  .then( payload => {
    if (payload.id) {
      return dispatch(deleteShopping(payload))
    } else {
      return dispatch(receiveShopping(payload))
    }
  })