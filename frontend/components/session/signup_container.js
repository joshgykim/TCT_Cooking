import { connect } from 'react-redux';
import { createNewUser, resetSessionErrors } from "../../actions/session_actions";
import Signup from "./signup";

const mapStateToProps = state => ({
  sessionErrors: state.errors.sessionErrors
})

const mapDispatchToProps = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)),
  deleteSessionErrors: () => dispatch(resetSessionErrors())
})

export default connect(mapStateToProps, mapDispatchToProps)(Signup);