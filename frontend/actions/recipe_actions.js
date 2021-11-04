import {
  fetchRecipe,
  fetchRecipes,
  postRating
} from "../util/recipe_util";

export const RECEIVE_RECIPE = "RECEIVE_RECIPE";
export const RECEIVE_RECIPES = "RECEIVE_RECIPES";

const receiveRecipe = ({ recipe, categories, ingredients, comments }) => ({
  type: RECEIVE_RECIPE,
  recipe,
  categories,
  ingredients,
  comments
})

const receiveRecipes = ({ recipes, collections }) => ({
  type: RECEIVE_RECIPES,
  recipes,
  collections
})

export const getRecipeData = (recipeId) => dispatch => fetchRecipe(recipeId)
  .then( recipeData => dispatch(receiveRecipe(recipeData)) )

export const getRecipes = (mode) => dispatch => fetchRecipes(mode)
  .then( recipesData => dispatch(receiveRecipes(recipesData)) )

export const rateRecipe = (ratingData) => dispatch => postRating(ratingData)
  .then( recipeData => dispatch(receiveRecipe(recipeData)) )
