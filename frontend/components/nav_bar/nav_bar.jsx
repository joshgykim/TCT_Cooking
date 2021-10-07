import React from "react";
import { Link } from 'react-router-dom';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const navBarRight = this.props.currentUser? (
      <div className="nav-bar-right">
        <Link className="your-page" to="/">YOUR GROCERY LIST</Link>
        <Link className="your-page-box" to="/recipe-box">YOUR RECIPE BOX</Link>
        <button onClick={this.props.logoutUser}>(log out)</button>
      </div>
    ) : (
      <div className="nav-bar-right">
        <Link className="button" to="/">Your Grocery List</Link>
        <button onClick={() => this.props.openModal("login")}>Your Recipe Box (Login)</button>
      </div>
    )

    return (
      <div>
        <header className="nav-bar">
          <div className="nav-bar-left">
            <Link className="logo" to="/">Cali
              <img className="logo-image" src="https://mwcm.nyt.com/dam/jcr:c46c3399-24e9-47ea-b327-4694aeaf8910/cooking.png"/>
            </Link>
          </div>
          {navBarRight}
        </header>
        <div className="nav-bar-height"> hello
        </div>
      </div>
    )
  }
}

export default NavBar