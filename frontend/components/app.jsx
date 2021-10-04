import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Home from './home/home';
import NotFound from './not_found';
import NavBarContainer from './nav_bar/nav_bar_container';
import RecipeContainer from './recipe/recipe_container';
import AuthorContainer from './author/author_container';
import RecipeCreator from './recipe/recipe_creator';
import Modal from './session/modal'

export default () => (
  <div> 
    <Modal/>
    <NavBarContainer/>
    <Switch>
      <Route exact path="/" component={Home}/>
      <Route exact path="/recipes/:recipeId" component={RecipeContainer}/>
      <Route exact path="/authors/:authorId" component={AuthorContainer}/>

      <Route exact path="/create-recipe" component={RecipeCreator}/>
      <Route component={NotFound}/>
    </Switch>
  </div>
);