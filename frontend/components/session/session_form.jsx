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
      <div>
      <label>Username</label>
        <input
          className="username-input"
          type="text"
          value={this.state.username}
          onChange={ (e) => this.updateInput(e, "username") }
        />
      </div>
    ) : null;

    const demoButton = this.props.formType === "login" ? (
      <button className="session-button" onClick={ (e) => this.loginDemoUser(e) }>DEMO USER</button>
    ) : null;

    return (
      <div className="session-form-popup" onClick={e => e.stopPropagation()}>
          <div className="session-form-left">
            <img src="https://cravedfw.files.wordpress.com/2014/02/souffle2.jpg?w=1000&h=750"/>
            <h2>Unlock California Times recipes and your personal recipe box with a free account.</h2>
          </div>
          <div className="session-form-right">
            <h1>Enter your email address to log in or create an account.</h1>
            <form onSubmit={ (e) => this.handleSubmit(e) }>

              {usernameInput}

              <label>Email Address</label>
                <input
                  type="text"
                  value={this.state.email}
                  onChange={ (e) => this.updateInput(e, "email") }
                />

              <label>Password</label>
                <input
                  type="password"
                  value={this.state.password}
                  onChange={ (e) => this.updateInput(e, "password") }
                />

              <button className="session-button">{this.props.formType.toUpperCase()}</button>

              {demoButton}

            </form>

            {sessionErrors}

            <hr className="or-break"/>
            <h2 className="or-text">or</h2>

            {this.props.otherForm}
          </div>
      </div>
    )
  }
}

export default Login;