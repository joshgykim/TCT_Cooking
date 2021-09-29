import React from "react";
import { connect } from 'react-redux';
import { loginUser, resetSessionErrors } from "../../actions/session_actions";
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from "./session_form";

const mapStateToProps = state => ({
  sessionErrors: state.errors.sessionErrors,
  formType: "login"
})

const mapDispatchToProps = dispatch => ({
  processForm: formUser => dispatch(loginUser(formUser)),
  deleteSessionErrors: () => dispatch(resetSessionErrors()),
  otherForm: (
    <button onClick={() => dispatch(openModal('signup'))}>
      Signup
    </button>
  ),
  closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);