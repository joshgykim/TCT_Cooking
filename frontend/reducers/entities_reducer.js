import { combineReducers } from 'redux';
import recipesReducer from "./entities/recipes_reducer";
import categoriesReducer from "./entities/categories_reducer";
import ingredientsReducer from "./entities/ingredients_reducer";
import commentsReducer from "./entities/comments_reducer";
import authorsReducer from "./entities/authors_reducer";
import collectionsReducer from "./entities/collections_reducer";
import shoppingsReducer from "./entities/shoppings_reducer";

const entitiesReducer = combineReducers({
  recipes: recipesReducer,
  categories: categoriesReducer,
  ingredients: ingredientsReducer,
  comments: commentsReducer,
  author: authorsReducer,
  collections: collectionsReducer,
  shoppings: shoppingsReducer
})

export default entitiesReducer;