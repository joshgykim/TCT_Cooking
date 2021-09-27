import React from "react";

class Signup extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      email: '',
      password: ''
    };
    this.updateInput = this.updateInput.bind(this);
  }

  updateInput(type) {
    return (e) => this.setState({ [type]: e.currentTarget.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createNewUser(this.state)
      // .then( () => this.props.history.push(''))
  }

  render() {
    return(
      <div className="session-form">
        <h2>Sign Up!</h2>
        
        <form onClick={this.handleSubmit}>
          <label>Username:
            <input
              type="text"
              value={this.state.username}
              onChange={this.updateInput("username")}
            />
          </label>

          <label>Email:
            <input
              type="text"
              value={this.state.email}
              onChange={this.updateInput("email")}
            />
          </label>

          <label>Password:
            <input
              type="password"
              value={this.state.password}
              onChange={this.updateInput("password")}
            />
          </label>

          <button>Sign up</button>
        </form>
      </div>
    )
  }
}

export default Signup;