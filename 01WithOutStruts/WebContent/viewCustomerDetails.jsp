<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="com.nbna.model.bean.User"%>
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

    Name: <jsp:getProperty property="name" name="user" /><br>
 	UserId: <jsp:getProperty property="userid" name="user"/><br>
 	Email: <jsp:getProperty property="email" name="user" /><br>
 	
 	<br>Shipping Address:<br>
 	
 	Street: <jsp:getProperty property="street" name="user"/><br>
 	City: <jsp:getProperty property="city" name="user"/><br>
 	State:	<jsp:getProperty property="state" name="user"/><br>
 	ZipCode: <jsp:getProperty property="zip" name="user"/><br>
 
</body>
</html>