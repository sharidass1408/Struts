<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration_Login_App</title>
</head>
<body>

<h3>Congrats you sucessfully logged in </h3>

<jsp:useBean id="user" class="com.nbna.model.bean.User" scope ="session">
</jsp:useBean>

<h4> The following are your login details</h4>

    Name: <bean:write name="user" property="name" /><br>
 	UserId: <bean:write name="user" property="userid" /><br>
 	Email: <bean:write name="user" property="email" /><br>
 	
 	<br>Shipping Address:<br>
 	
 	Street: <bean:write name="user" property="street" /><br>
 	City: <bean:write name="user" property="city" /><br>
 	State:	<bean:write name="user" property="state" /><br>
 	ZipCode: <bean:write name="user" property="zipcode" /><br>
 
</body>
</html>