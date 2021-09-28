import React from "react";

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      email: '',
      password: ''
    };
    this.updateInput = this.updateInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  updateInput(e, type) {
    this.setState({ [type]: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createNewUser(this.state) 
      .then(() => this.props.history.push('/')) // Hash history cannot push
  }

  render() {
    return(
      <div className="session-form">
        <h2>Log in</h2>

        <form  onSubmit={ (e) => this.handleSubmit(e) }>
          <label>Username:
            <input
              type="text"
              value={this.state.username}
              onChange={ (e) => this.updateInput(e, "username") }
            />
          </label>

          <label>Email:
            <input
              type="text"
              value={this.state.email}
              onChange={ (e) => this.updateInput(e, "email") }
            />
          </label>

          <label>Password:
            <input
              type="password"
              value={this.state.password}
              onChange={ (e) => this.updateInput(e, "password") }
            />
          </label>

          <button>Login</button>
        </form>
      </div>
    )
  }
}

export default Login;