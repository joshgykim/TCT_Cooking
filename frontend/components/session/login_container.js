import { connect } from 'react-redux';
import { loginUser, resetSessionErrors } from "../../actions/session_actions";
import Login from "./login";

const mapStateToProps = state => ({
  sessionErrors: state.errors.sessionErrors
})

const mapDispatchToProps = dispatch => ({
  loginUser: formUser => dispatch(loginUser(formUser)),
  deleteSessionErrors: () => dispatch(resetSessionErrors())
})

export default connect(mapStateToProps, mapDispatchToProps)(Login);