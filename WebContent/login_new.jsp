<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Login Page</title>
</head>
<body>

<%  
String profile_msg=(String)request.getParameter("username");  
if(profile_msg!=null){  
out.print(profile_msg);  
} 
String login_msg=(String)request.getParameter("pass");  
if(login_msg!=null){  
out.print(login_msg);  
} 
 %>  
 <script>
 function validateForm() 
 {
	    var x = document.forms["loginForm"]["email"].value;
	    if (x == "") {
	        alert("Email must be filled out");
	        return false;
	    }
	    var x = document.forms["loginForm"]["pass"].value;
	    if (x == "") {
	        alert("Password must be filled out");
	        return false;
	    }
	}
 
 </script>
 <br/>  
<form name="loginForm" action="loginprocess.jsp" onsubmit = "return validateForm()" method="post">  
Email ID:<input type="text" name="email"/><br/><br/>  
Password:<input type="password" name="pass"/><br/><br/>  
<a href="forgotPassword.jsp">Forgot Password?</a><br/><br/>
<input type="submit" value="login"/> <br/><br/>
</form>  

<%@ include file="index.jsp" %> 

</body>
</html>