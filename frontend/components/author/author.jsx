import React from "react";
import RecipeThumbnail from "../recipe/recipe_thumbnail";

class Author extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getAuthorData(this.props.match.params.authorId);
  }

  componentDidUpdate(prevProp) {
    if (this.props.match.params.authorId != prevProp.match.params.authorId) {
      this.props.getAuthorData(this.props.match.params.authorId);
    }
  }

  render() {
    if (this.props.author === undefined) return (<div className="author"></div>)
    
    return (
      <div>
        <h2>{this.props.author.name}'s Recipe Box</h2>
        <h4>{this.props.author.bio}</h4>

        {Object.keys(this.props.recipes).map( (recipeId, i) => (
          <RecipeThumbnail key={i} recipe={this.props.recipes[recipeId]}/>
        ))}
      </div>
    )
  }
}

export default Author;