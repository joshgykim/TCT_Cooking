import {
  postUser,
  postSession,
  deleteSession
} from "../util/session_util";

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";
export const RESET_SESSION_ERRORS = "RESET_SESSION_ERRORS";

const receiveCurrentUser = user => ({
  type: RECEIVE_CURRENT_USER,
  user
})

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER
});

const receiveErrors = errors => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
})

export const resetSessionErrors = () => ({
  type: RESET_SESSION_ERRORS
})

export const createNewUser = formUser => dispatch => postUser(formUser)
  .then(
    payload => dispatch(receiveCurrentUser(payload)),
    errors => dispatch(receiveErrors(errors.responseJSON))
    );

export const loginUser = formUser => dispatch => postSession(formUser)
  .then(
    payload => dispatch(receiveCurrentUser(payload)),
    error => dispatch(receiveErrors(error.responseJSON))
    );

export const logoutUser = () => dispatch => deleteSession()
  .then(() => dispatch(logoutCurrentUser()));