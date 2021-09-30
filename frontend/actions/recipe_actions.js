import {
  fetchRecipe
} from "../util/recipe_util";

export const RECEIVE_RECIPE = "RECEIVE_RECIPE";

const receiveRecipe = ({ recipe, categories, ingredients }) => ({
  type: RECEIVE_RECIPE,
  recipe,
  categories,
  ingredients
})

export const getRecipeData = (recipeId) => dispatch => fetchRecipe(recipeId)
  .then( recipeData => dispatch(receiveRecipe(recipeData)) )