<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<%  
String name_msg=(String)request.getAttribute("username");  
if(name_msg!=null){  
out.print(name_msg);  
} 
String email_msg=(String)request.getAttribute("emailID");  
if(email_msg!=null){  
out.print(email_msg);  
}
String role_msg=(String)request.getAttribute("role");  
if(role_msg!=null){  
out.print(role_msg);  
} 
String address_msg=(String)request.getAttribute("address");  
if(address_msg!=null){  
out.print(address_msg);  
} 
String zipcode_msg=(String)request.getAttribute("zipcode");  
if(zipcode_msg!=null){  
out.print(zipcode_msg);  
} 
String phoneNo_msg=(String)request.getAttribute("phoneNo");  
if(phoneNo_msg!=null){  
out.print(phoneNo_msg);  
}
String password_msg=(String)request.getAttribute("password");  
String confrimPassword_msg=(String)request.getAttribute("confirmPassword");
if(password_msg!=null){ 
out.print(password_msg);
} 
 %>
 <script>
 function validateForm() 
 {
	    var x = document.forms["createaccount"]["name"].value;
	    if (x == "") {
	        alert("Name must be filled out");
	        return false;
	    }
	    var x = document.forms["createaccount"]["emailID"].value;
	    if (x == "") {
	        alert("Email ID must be filled out");
	        return false;
	    }
	    var x = document.forms["createaccount"]["address"].value;
	    if (x == "") {
	        alert("Address must be filled out");
	        return false;
	    }
	    var x = document.forms["createaccount"]["zipcode"].value;
	    if (x == "") {
	        alert("Zipcode must be filled out");
	        return false;
	    }
	    var x = document.forms["createaccount"]["phoneNo"].value;
	    if (x == "") {
	        alert("phoneNo must be filled out");
	        return false;
	    }
	    var x = document.forms["createaccount"]["password"].value;
	    if (x == "") {
	        alert("Password must be filled out");
	        return false;	        
	    }
	    var x = document.forms["createaccount"]["confirmPassword"].value;
	    if (x == "") {
	        alert("Password must be filled out");
	        return false;
	    }
	    passwordValidation();
	    
	}
 function passwordValidation()
 {
 	if(document.forms["createaccount"]["password"].value != document.forms["createaccount"]["confirmPassword"].value)
 		{
 			alert("Password and Confirm Password not equal");
 			return false;
 		}
 	
 }
 </script>

<form name="createaccount"action="signUpprocess.jsp" method="post" onsubmit = "return validateForm()">  
Name<input type="text" name="name"/><br/><br/>  
MailID*<input type="text" name="emailID"/><br/><br/>  
Role*<select name="role" id="selectboxid">
<option value="Celebrity">Celebrity</option>
<option value="Customer">Customer</option>
</select><br/><br/>
Address*<textarea name="address"></textarea><br/><br/>
ZipCode*<input type="text" name="zipcode"/><br/><br/>
Phone Number*<input type="text" name="phoneNo"/><br/><br/>
Password*<input type="password" name="password"/><br/><br/>
Confirm Password*<input type="password" name="confirmPassword"/><br/><br/>
<input type="submit" value="Register"/> 
<jsp:include page="index.jsp"></jsp:include>
</form>  
</body>
</html>