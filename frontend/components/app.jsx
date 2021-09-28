import React from 'react';
import { Route } from 'react-router-dom';
import Home from './home/home';
import NavBarContainer from './nav_bar/nav_bar_container'
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

export default () => (
  <div> 
    <Route path="/" component={NavBarContainer}/>
    <Route path="/" component={Home}/>
    <AuthRoute path="/login" component={LoginContainer}/>
    <AuthRoute path="/signup" component={SignupContainer}/>
  </div>
);