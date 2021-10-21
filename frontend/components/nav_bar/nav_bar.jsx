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
        <Link className="your-page" to="/" onClick={this.props.logoutUser} >LOG OUT</Link>
      </div>
    ) : (
      <div className="nav-bar-right">
        <Link className="your-page-box" to="/recipe-box">YOUR RECIPE BOX</Link>
        <Link className="your-page-box" to="/" onClick={() => this.props.openModal("login")}>LOG IN</Link>
      </div>
    )

    return (
      <div>
        <header className="nav-bar">
          <div>
            <div className="nav-bar-left">
              <Link className="logo" to="/">Cali
                <img className="logo-image" src="https://mwcm.nyt.com/dam/jcr:c46c3399-24e9-47ea-b327-4694aeaf8910/cooking.png"/>
              </Link>
            </div>
            <div className="search-bar">
              <img className="search-image" src="https://cdn-icons-png.flaticon.com/512/149/149852.png"/>
              <span>What would you like to cook?</span>
            </div>
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