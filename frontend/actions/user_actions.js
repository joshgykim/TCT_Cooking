import {
  fetchUser
} from "../util/user_util";

export const RECEIVE_USER = "RECEIVE_USER";

const receiveUser = ({ recipes, categories }) => ({
  type: RECEIVE_USER,
  recipes: (recipes === undefined) ? {} : recipes,
  categories: (categories === undefined) ? {} : categories
})

export const getUserData = (userId) => dispatch => fetchUser(userId)
  .then( userData => dispatch(receiveUser(userData)) )