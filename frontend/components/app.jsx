import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Home from './home/home';
import NotFound from './not_found';
import NavBarContainer from './nav_bar/nav_bar_container'
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

export default () => (
  <div> 
    <Switch>
      <Route path="/">
        <Route path="/" component={NavBarContainer}/>
        <Route path="/" component={Home}/>
        <AuthRoute exact path="/login" component={LoginContainer}/>
        <AuthRoute exact path="/signup" component={SignupContainer}/>
      </Route>
      <Route>
        <NotFound/>
      </Route>
    </Switch>
  </div>
);