import {
  fetchCategory
} from "../util/category_util";

export const RECEIVE_CATEGORY = "RECEIVE_CATEGORY";

const receiveCategory = ({ category, recipes }) => ({
  type: RECEIVE_CATEGORY,
  category,
  recipes
})

export const getCategoryData = categoryId => dispatch => fetchCategory(categoryId)
  .then( categoryData => dispatch(receiveCategory(categoryData)) )