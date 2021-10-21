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
      <ProtectedRoute exact path="/recipe-box" component={RecipeBoxContainer}/>
      <ProtectedRoute exact path="/recipes/:recipeId" component={RecipeContainer}/>
      <ProtectedRoute exact path="/authors/:authorId" component={AuthorContainer}/>
      <ProtectedRoute exact path="/categories/:categoryId" component={CategoryContainer}/>
      <ProtectedRoute exact path="/collections/:collectionId" component={CollectionContainer}/>
      <Route component={NotFound}/>
    </Switch>
    <div className="profile">
      <div className="josh-profile">
        <div className="profile-description">
          <h1>About the Creator</h1>
          <span>At the time of this website's creation, Josh was student studying fullstack development at&nbsp;<span><a href="https://www.appacademy.io" >App Academy</a></span>. He has a background in Architecture, design and software engineering.</span>
        </div>
        <div className="profile-icons">

        </div>
      </div>
    </div>
    <div className="about">
      <div className="about-us">
        <div className="about-us-text">
          <h3>ABOUT THIS WEBSITE</h3>
          <h3><span>The California Times Cooking is a clone of The New York Times Cooking, a digital cookbook platform and cooking guide alike, that helps home cooks of every level discover, save and organize the world's best recipes. It is a fullstack project created by Josh to demostrate his skills as a developer, and its content belongs to&nbsp;</span><span><a href="https://cooking.nytimes.com">The New York Times.</a></span></h3>
        </div>
      </div>
      <div className="footnote">
        © 2021 The New York Times | Your Personal Information is safe with us
      </div>
    </div>
  </div>
);