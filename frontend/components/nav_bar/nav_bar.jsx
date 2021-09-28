import React from "react";
import { Link } from 'react-router-dom';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const display = this.props.currentUser? (
      <div className="nav-bar-right">
        <h3>Welcome, {this.props.currentUser.username}</h3>
        <Link className="button" to="/">Your Grocery List</Link>
        <Link className="button" to="/">Your Recipe Box</Link>
        <button onClick={this.props.logoutUser}>(log out)</button>
      </div>
    ) : (
      <div className="nav-bar-right">
        <Link className="button" to="/">Your Grocery List</Link>
        <Link id="recipe-box-button" className="button" to="/login">Your Recipe Box (Login)</Link>
      </div>
    )

    return (
      <header className="nav-bar">
        <div className="nav-bar-left">
          <h1 className="logo">The California Times Cooking</h1>
        </div>
        {display}
      </header>
    )
  }
}

export default NavBar