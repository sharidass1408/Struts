package com.nbna.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.nbna.model.service.InsertDataService;


public class RegAction extends Action{
	
	public ActionForward execute(ActionMapping mapping,
	    ActionForm form,
	    HttpServletRequest request,
	    HttpServletResponse response)
	    throws Exception
	  {
	    UserForm regform = (UserForm)form;

	    // Perform employee search based on what criteria was entered.
	    String password = regform.getPassword();
	    String repassword = regform.getRepassword();
	    PrintWriter pw= response.getWriter();
	    if (password == repassword) {	    	
	    	InsertDataService ids = new InsertDataService();
	    	boolean check=ids.execute(request);	    	
			//pw.write("Sucessfully created an account please look forward for email");
	    	System.out.println(check);
	    }
	    // Forward control to this Action's input page.   
	    
	    return mapping.findForward("sucess");
	    
	  }
	}
