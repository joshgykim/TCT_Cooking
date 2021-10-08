import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Modal from './session/modal'
import NavBarContainer from './nav_bar/nav_bar_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import Home from './home/home';
import RecipeBoxContainer from './recipe_box/recipe_box_container';
import RecipeContainer from './recipe/recipe_container';
import AuthorContainer from './author/author_container';
import RecipeCreator from './recipe/recipe_creator';
import CategoryContainer from './category/category_container';
import CollectionContainer from './collection/collection_container';
import NotFound from './not_found';

export default () => (
  <div> 
    <Modal/>
    <NavBarContainer/>
    <Switch>
      <Route exact path="/" component={Home}/>
      <Route exact path="/recipe-box" component={RecipeBoxContainer}/>
      <ProtectedRoute exact path="/recipes/:recipeId" component={RecipeContainer}/>
      <ProtectedRoute exact path="/authors/:authorId" component={AuthorContainer}/>
      <ProtectedRoute exact path="/categories/:categoryId" component={CategoryContainer}/>
      <ProtectedRoute exact path="/collections/:collectionId" component={CollectionContainer}/>
      {/* <Route exact path="/create-recipe" component={RecipeCreator}/> */}
      <Route component={NotFound}/>
    </Switch>
    <div className="profile">
    </div>
    <div className="about">
    </div>
  </div>
);