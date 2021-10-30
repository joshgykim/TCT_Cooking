import React from "react";
import { connect } from 'react-redux';
import { getShoppings } from '../../actions/shopping_actions';
import ShoppingList from "./shopping_list"

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  shoppings: state.entities.shoppings
})

const mapDispatchToProps = dispatch => ({
  getShoppings: (userId) => dispatch(getShoppings(userId))
})

export default connect(mapStateToProps, mapDispatchToProps)(ShoppingList)