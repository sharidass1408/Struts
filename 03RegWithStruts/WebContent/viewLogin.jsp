<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration_Login_App</title>
<style type="text/css">
		body{
			background-color: #d2b48c;
			margin-left: 15%;
			margin-right: 15%;
			border: 1px dotted gray;
			padding: 5px 5px 5px 5px;
			font-family: sans-serif;
		}
 
	</style>
</head>
<body>
 	
 <div align ="center">
 <h1>Welcome to Sai's Website!!</h1>
 	

<html:errors />

	<html:form action="/Login">
			UserId:   <html:text property="userid" /><br>		
			Password: <html:text property="password" /><br>			
	<html:submit />
	</html:form>
  <!-- This the is for Registration Form part  -->
<br><br><br>
  
  <form action="viewRegistrationForm.jsp"  method="post">  
 	<div align="center"> 
 	If this is your First Time please register, by clicking register button below:<br>	 
 	<input type="submit" value="Register"/> 
 	</div> 	
</form>  		 

</body>
</html>