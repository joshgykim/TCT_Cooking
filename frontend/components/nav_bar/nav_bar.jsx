import React from "react";
import { Link } from 'react-router-dom';
import { searchRecipes } from '../../util/recipe_util';

class NavBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchString: "",
      searchResult: {},
    }
    this.typingTimer;
    this.updateSearchBar = this.updateSearchBar.bind(this);
    this.renderSearch = this.renderSearch.bind(this);
  }

  updateSearchBar(e) {
    this.setState({ searchString: e.target.value })

    let doneTypingInterval = 500;

    window.addEventListener("click", () => {
      this.setState({ searchResult: {} })
    })

    e.target.addEventListener("keyup", () => {
      clearTimeout(this.typingTimer);
      if (e.target.value) {
        this.typingTimer = setTimeout(() => {
          searchRecipes(e.target.value)
            .then( payload => {
              this.setState({ searchResult: payload })
            })
          }, doneTypingInterval)
      }
    })
  }

  renderSearch() {
    if (Object.keys(this.state.searchResult).length > 0) {
      const recipesObj = this.state.searchResult.recipes ?
        this.state.searchResult.recipes : {}
      const collectionsObj = this.state.searchResult.collections ?
        this.state.searchResult.collections : {}

      return (
        <div className="search-result">
          <ul className="search-result-recipes">
            {
              Object.keys(recipesObj).map( recipeId => {
                return (
                  <li key={recipeId}>
                    <Link className="search-recipe-container" to={`/recipes/${recipeId}`}>
                      <img className="search-result-img" src={recipesObj[recipeId].image_url}/>
                      <h2 className="search-result-name">{recipesObj[recipeId].title}</h2>
                    </Link>
                  </li>
                )
              })
            }
          </ul>
          <ul className="search-result-collections">
            {
              Object.keys(collectionsObj).map( collectionId => {
                return (
                  <li key={collectionId}>
                    <Link className="search-recipe-container" to={`/collections/${collectionId}`}>
                      <img className="search-result-img" src={collectionsObj[collectionId].image_url}/>
                      <h2 className="search-result-name">{collectionsObj[collectionId].name}</h2>
                    </Link>
                  </li>
                )
              })
            }
          </ul>
        </div>
      )
    }
  }

  render() {
    const navBarRight = this.props.currentUser? (
      <div className="nav-bar-right">
        <button className="your-page-button" onClick={() => this.props.openModal("shopping")}>YOUR GROCERY LIST</button>
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
          <div className="nav-bar-meta-left">
            <div className="nav-bar-left">
              <Link className="logo" to="/">Cali
                <img className="logo-image" src="https://mwcm.nyt.com/dam/jcr:c46c3399-24e9-47ea-b327-4694aeaf8910/cooking.png"/>
              </Link>
            </div>
            <div className="search-bar">
              <img className="search-image" src="https://cdn-icons-png.flaticon.com/512/149/149852.png"/>
              <input
                type="text"
                placeholder="What would you like to cook?"
                value={this.state.searchString}
                onChange={ (e) => this.updateSearchBar(e) }/>
              {this.renderSearch()}
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