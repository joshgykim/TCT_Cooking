import {
  postComment,
  patchComment
} from "../util/comment_util";

export const RECEIVE_COMMENT = "RECEIVE_COMMENT";

const receiveComment = comment => ({
  type: RECEIVE_COMMENT,
  comment
})

export const createComment = (comment) => dispatch => postComment(comment)
  .then((comment) => dispatch(receiveComment(comment)))

export const updateComment = (comment) => dispatch => patchComment(comment)
  .then((comment) => dispatch(receiveComment(comment)))