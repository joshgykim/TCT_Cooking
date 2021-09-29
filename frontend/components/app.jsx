import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Home from './home/home';
import NotFound from './not_found';
import NavBarContainer from './nav_bar/nav_bar_container';
import Modal from './session/modal'

export default () => (
  <div> 
    <Modal/>
    <NavBarContainer/>
    <Switch>
      <Route exact path="/" component={Home}/>
      <Route component={NotFound}/>
    </Switch>
  </div>
);