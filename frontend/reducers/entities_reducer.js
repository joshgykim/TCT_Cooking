import { combineReducers } from 'redux';
import recipesReducer from "./entities/recipes_reducer";
import categoriesReducer from "./entities/categories_reducer";
import ingredientsReducer from "./entities/ingredients_reducer";
import commentsReducer from "./entities/comments_reducer";

const entitiesReducer = combineReducers({
  recipes: recipesReducer,
  categories: categoriesReducer,
  ingredients: ingredientsReducer,
  comments: commentsReducer
})

export default entitiesReducer;