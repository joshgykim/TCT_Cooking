import React from "react";
import { connect } from "react-redux";
import { Redirect,  Route, withRouter } from "react-router-dom";
import Modal from '../components/session/modal';
import { openModal } from '../actions/modal_actions';

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.currentUser)
});

const mapDispatchToProps = dispatch => ({
  openModal: (formType) => dispatch(openModal(formType))
})

const Auth = ({ loggedIn , path, component: Component }) => (
  <Route
    path={path}
    render={props => (
      loggedIn ? <Redirect to="/" /> : <Component {...props} /> 
    )}
  />
);

// const Protected = ({ loggedIn, path, component: Component }) => (
//   <Route
//     path={path}
//     render={props => (
//       loggedIn ? <Component {...props} /> : <Redirect to="/" />
//     )}
//   />
// );

const Protected = ({ loggedIn, path, component: Component, openModal }) => {
  return (<Route
    path={path}
    render={props => {
      if (loggedIn) {
        return <Component {...props} />
      } else {
        openModal("login")
        return <Redirect to="/" />
      }
    }}
  />)
};

export const AuthRoute = withRouter(connect(mapStateToProps)(Auth));
export const ProtectedRoute = withRouter(connect(mapStateToProps, mapDispatchToProps)(Protected));