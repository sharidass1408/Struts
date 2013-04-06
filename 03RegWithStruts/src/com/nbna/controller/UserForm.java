package com.nbna.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class UserForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	private String name = null;
	private String userid = null;
	private String password = null;
	private String repassword= null;
	private String email= null;
	private String street=null;
	private String city= null;
	private String state= null;
	private String zip=null;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	// Reset form fields.
		public void reset(ActionMapping mapping, HttpServletRequest request) {
			name = null;
			userid = null;
			password = null;
			repassword= null;
			email= null;
			street=null;
			city= null;
			state= null;
			zip=null;
		}

		// Validate form data.
		public ActionErrors validate(ActionMapping mapping,
				HttpServletRequest request) {
			ActionErrors errors = new ActionErrors();

			// Determine if social security number has been entered.
			
			if (!password.equals(repassword)) {
				errors.add("Password", new ActionError("error.search.passwordsdontmatch"));
			}
			return errors;
		}
}
