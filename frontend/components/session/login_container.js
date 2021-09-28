import { connect } from 'react-redux';
import { createNewUser } from "../../actions/session_actions";
import Login from "./Login";

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser))
})

export default connect(null, mapDispatchToProps)(Login);