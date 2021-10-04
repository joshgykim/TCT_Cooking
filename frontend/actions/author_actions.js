import {
  fetchAuthor
} from "../util/author_util";

export const RECEIVE_AUTHOR = "RECEIVE_AUTHOR";

const receiveAuthor = ({ author, recipes }) => ({
  type: RECEIVE_AUTHOR,
  author,
  recipes
})

export const getAuthorData = authorId => dispatch => fetchAuthor(authorId)
  .then( authorData => dispatch(receiveAuthor(authorData)) )