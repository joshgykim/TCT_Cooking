import React from "react";
import { Link } from 'react-router-dom';

class Signup extends React.Component {
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

  componentWillUnmount() {
    this.props.deleteSessionErrors();
  }

  render() {
    const sessionErrors = this.props.sessionErrors ? (
      <ul>
        {this.props.sessionErrors.map((error, i) => (
          <li key={i}>{error}</li>))
        }
      </ul>
    ) : null;

    return (
      <div className="session-form">
        <div className="session-form-popup">
          <Link className="exit-button" to="/">X</Link>
          <div className="session-form-left">
            <h2>Unlock California Times recipes and your personal recipe box with a free account.</h2>
          </div>
          <div className="session-form-right">
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

              <button>Create Account</button>
            </form>
            {sessionErrors}
            <h2>----- or -----</h2>
            <Link to="/login">Log in as existing user</Link>
          </div>
        </div>
      </div>
    )
  }
}

export default Signup;