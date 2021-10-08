import React from "react";
import { connect } from 'react-redux';
import { createNewUser, resetSessionErrors } from "../../actions/session_actions";
import { openModal, closeModal } from '../../actions/modal_actions';
import SessionForm from "./session_form";

const mapStateToProps = state => ({
  sessionErrors: state.errors.sessionErrors,
  formType: "signup"
})

const mapDispatchToProps = dispatch => ({
  processForm: formUser => dispatch(createNewUser(formUser)),
  deleteSessionErrors: () => dispatch(resetSessionErrors()),
  otherForm: (
    <button className="other-button" onClick={() => dispatch(openModal('login'))}>
      Login
    </button>
  ),
  closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);