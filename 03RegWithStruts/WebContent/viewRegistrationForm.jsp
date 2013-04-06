	<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"%>
    <%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration_Login_App</title>
 <style type="text/css">
		body{
			background-color: #669900;
			margin-left: 20%;
			margin-right: 20%;
			border: 5px dotted gray;
			padding: 10px 10px 10px 10px;
			font-family: sans-serif;
			
		}
 
	</style>
</head>
<body>

<html:errors />
<div align ="center">
 <h1>Please enter your information to register on the site!</h1>
 </div>
 
<html:form action="/Register">
	
 	<div align="center" ><br><br>
 	<table border="1">
 	
 	<tr>
 	<td>Name: </td>
 	<td><html:text property="name" /></td>
 	</tr>
 	
 	<tr>
 	<td>UserId: </td> 
 	<td><html:text property="userid" /></td>
 	</tr>
 	
 	<tr>
 	<td>Password: </td>
 	<td><html:text property="password" /></td>
	</tr>
 	
 	
 	<tr>
 	<td>Re-enterPassword: </td>
 	<td><html:text property="repassword" /></td>
	</tr>
	
 	
 	<tr>
 	<td>Email: </td>
 	<td><html:text property="email" /></td>
 	</tr>
 	</table>
 	
 	<br>Shipping Address:<br>
 	
 	<table border="1">
 	<tr>
 	<td>Street:          </td> 	    
 	<td><html:text property="street" /></td>
 	</tr> 	
 	
 	<tr>
 	<td>City: </td>
 	<td><html:text property="city" /></td>
 	</tr>
 	<tr>
 	<td>State:</td>
 	<td><html:text property="state" /></td>
 	</tr>
 	
 	<tr>
 	<td>ZipCode:</td> 	
 	<td><html:text property="zip" /></td>
 	</tr>
 	<tr><td></td>
				<td><html:submit /></td>
	</tr>
 	 </table> 	
 	 </div>
</html:form>	 

<!-- This the is for Registration Form part  -->
<br><br><br>
  <form action="viewLogin.jsp"  method="post">  
 	<div align="center"> 
 	If this is your First Time please register, by clicking register button below:<br>	 
 	<input type="submit" value="Back"/> 
 	</div> 	
</form>  

</body>
</html>