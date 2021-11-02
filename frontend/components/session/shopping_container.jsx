import React from "react";
import { connect } from 'react-redux';
import { getShoppings, removeShopping, removeIngredient } from '../../actions/shopping_actions';
import ShoppingList from "./shopping_list"

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  shoppings: state.entities.shoppings
})

const mapDispatchToProps = dispatch => ({
  getShoppings: (userId) => dispatch(getShoppings(userId)),
  removeShopping: (recipeId) => dispatch(removeShopping(recipeId)),
  removeIngredient: (shopping) => dispatch(removeIngredient(shopping))
})

export default connect(mapStateToProps, mapDispatchToProps)(ShoppingList)