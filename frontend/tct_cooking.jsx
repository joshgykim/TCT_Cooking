import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";
import { fetchRecipe } from "./util/recipe_util";
import { fetchUser } from "./util/user_util";

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  let preloadedState = undefined;

  if (window.currentUser) {
    preloadedState = {
      session: {
        currentUser: window.currentUser
      }
    };
  }
  // PLACEHOLDER
  window.fetchRecipe = fetchRecipe;
  window.fetchUser = fetchUser;
  
  const store = configureStore(preloadedState);
  window.store = store;
  ReactDOM.render(<Root store={store}/>, root);
});