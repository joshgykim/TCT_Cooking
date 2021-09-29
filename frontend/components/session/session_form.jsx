import React from "react";

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.formType === "login" ? {
      email: '',
      password: ''
    } : {
      username: '',
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
    this.props.processForm(this.state)
      .then( () => this.props.closeModal());
  }

  loginDemoUser(e) {
    e.preventDefault();
    let demoUser = {
      email: 'demo_user@email.com',
      password: 'password'
    }
    this.setState(demoUser);
    this.props.processForm(demoUser)
      .then( () => this.props.closeModal());
  }

  render() {
    const sessionErrors = this.props.sessionErrors ? (
      <ul>
        {this.props.sessionErrors.map((error, i) => (
          <li key={i}>{error}</li>))
        }
      </ul>
    ) : null;

    const usernameInput = this.props.formType === "signup" ? (
      <label>Username:
        <input
          type="text"
          value={this.state.username}
          onChange={ (e) => this.updateInput(e, "username") }
        />
      </label>
    ) : null;

    const demoButton = this.props.formType === "login" ? (
      <button onClick={ (e) => this.loginDemoUser(e) }>Demo Login</button>
    ) : null;

    return (
      <div className="session-form-popup" onClick={e => e.stopPropagation()}>
          <div className="session-form-left">
            <h2>Unlock California Times recipes and your personal recipe box with a free account.</h2>
          </div>
          <div className="session-form-right">
            <form onSubmit={ (e) => this.handleSubmit(e) }>

              {usernameInput}

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

              <button>{this.props.formType}</button>

              {demoButton}

            </form>

            {sessionErrors}

            <h2>----- or -----</h2>

            {this.props.otherForm}
          </div>
      </div>
    )
  }
}

export default Login;