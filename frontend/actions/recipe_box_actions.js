import {
  postRecipeBox,
  destroyRecipeBox
} from "../util/recipe_box_util"

export const RECEIVE_RECIPE_BOX = "RECEIVE_RECIPE_BOX";

const receiveRecipeBox = ({recipe}) => ({
  type: RECEIVE_RECIPE_BOX,
  recipe
})

export const createRecipeBox = (recipeBoxData) => dispatch => postRecipeBox(recipeBoxData)
  .then( payload => dispatch(receiveRecipeBox(payload)) )

export const deleteRecipeBox = (recipeBoxData) => dispatch => destroyRecipeBox(recipeBoxData)
  .then( payload => dispatch(receiveRecipeBox(payload)) )