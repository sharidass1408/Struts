package com.nbna.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import com.nbna.model.bean.User;

public class LoginForm extends ActionForm{

	private String userid = null;
	private String password = null;
	private User user = null;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		 userid = null;
		 password = null;
		 user = null;
	}

	// Validate form data.
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();

		boolean useridEntered = false;
		boolean passwordEntered = false;

		// Determine if userid has been entered.
		if (userid != null && userid.trim().length() > 0) {
			useridEntered = true;
		}
		
		// Determine if userid has been entered.
		if (password != null && password.trim().length() > 0) {
			passwordEntered = true;
		 }
		
		if (!useridEntered ) 
			errors.add(null, new ActionError("error.login.criteria.missinguserid"));
		if(userid.trim().length()>4)
			errors.add(null, new ActionError("error.login.criteria.invaliduserid"));
		
		if( !passwordEntered)
			errors.add(null, new ActionError("error.login.criteria.missingupassword"));
		
		
		return errors;
	}
	
}
