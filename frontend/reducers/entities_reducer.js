import { combineReducers } from 'redux';
import recipesReducer from "./entities/recipes_reducer";
import categoriesReducer from "./entities/categories_reducer";
import ingredientsReducer from "./entities/ingredients_reducer";

const entitiesReducer = combineReducers({
  recipes: recipesReducer,
  categories: categoriesReducer,
  ingredients: ingredientsReducer
})

export default entitiesReducer;