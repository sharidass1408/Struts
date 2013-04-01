package com.nbna.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.nbna.model.bean.User;
import com.nbna.model.service.LoginService;



public class LoginAction extends Action{
	
	public ActionForward execute(ActionMapping mapping,
		    ActionForm form,
		    HttpServletRequest request,
		    HttpServletResponse response)
		    throws Exception
		  {    
			LoginService ls = new LoginService();		    
		    boolean status= ls.getLoginStatus(request);
		    LoginForm loginform = (LoginForm) form;
		    User user = ls.getUserInfo();
		    String check ="failure";
		    
		    if(status){
				System.out.println("This is login sucess");
				 check ="sucess";		
				}
		    
		    // Place search results in LoginForm for access by JSP.
		    loginform.setUser(user);
		    mapping.setForward(check);
		    // Forward control to this Action's input page.
		    return mapping.getInputForward();
		  }

}
