import React from "react";
import { Link } from 'react-router-dom';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
    };
    this.updateInput = this.updateInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.loginDemoUser = this.loginDemoUser.bind(this);
  }

  updateInput(e, type) {
    this.setState({ [type]: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.loginUser(this.state)
      .then(() => this.props.history.push('/')) // Hash history cannot push
  }

  componentWillUnmount() {
    this.props.deleteSessionErrors();
  }

  loginDemoUser(e) {
    e.preventDefault();
    let demoUser = {
      email: 'demo_user@email.com',
      password: 'password'
    }
    this.setState(demoUser);
    this.props.loginUser(demoUser)
      .then(() => this.props.history.push('/'))
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
            <form onSubmit={ (e) => this.handleSubmit(e) }>
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
              <button onClick={ (e) => this.loginDemoUser(e) }>Demo Login</button>
            </form>
            {sessionErrors}
            <h2>----- or -----</h2>
            <Link to="/signup">Create an account?</Link>
          </div>
        </div>
      </div>
    )
  }
}

export default Login;