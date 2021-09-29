import { logoutUser } from '../../actions/session_actions';
import { connect } from 'react-redux';
import { openModal } from '../../actions/modal_actions';
import NavBar from './nav_bar';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  logoutUser: () => dispatch(logoutUser()),
  openModal: (formType) => dispatch(openModal(formType))
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);