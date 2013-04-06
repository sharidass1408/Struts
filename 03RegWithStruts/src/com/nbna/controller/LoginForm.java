package com.nbna.controller;

import org.apache.struts.action.ActionForm;

public class LoginForm extends ActionForm {

	String userid = null;
	String password = null;
	
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

}
