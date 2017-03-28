<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Charity</title>
</head>
<body>
<%  
String name_msg=(String)request.getParameter("name");  
if(name_msg!=null){  
out.print(name_msg);  
} 
String emailID_msg=(String)request.getParameter("emailID");  
if(emailID_msg!=null){  
out.print(emailID_msg);  
}  
String address_msg=(String)request.getParameter("address");  
if(address_msg!=null){  
out.print(address_msg);  
} 
String zipcode_msg=(String)request.getParameter("zipcode");  
if(zipcode_msg!=null){  
out.print(zipcode_msg);  
} 
String phoneNo_msg=(String)request.getParameter("phoneNo");  
if(phoneNo_msg!=null){  
out.print(phoneNo_msg);  
} 
%>
<script>
 function validateForm() 
 {
	    var x = document.forms["charityForm"]["name"].value;
	    if (x == "") {
	        alert("Name must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["emailID"].value;
	    if (x == "") {
	        alert("Email ID must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["address"].value;
	    if (x == "") {
	        alert("Address must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["zipcode"].value;
	    if (x == "") {
	        alert("Zipcode must be filled out");
	        return false;
	    }
	    var x = document.forms["charityForm"]["phoneNo"].value;
	    if (x == "") {
	        alert("phoneNo must be filled out");
	        return false;
	    }
	}
 
 </script>
<form name="charityForm" action="charityProcess.jsp" method="post" onsubmit = "return validateForm()">
Name*<input type="text" name="name"/><br/><br/>  
MailID*<input type="text" name="emailID"/><br/><br/>  
Address*<textarea name="address"></textarea><br/><br/>
ZipCode*<input type="text" name="zipcode"/><br/><br/>
Phone Number*<input type="text" name="phoneNo"/><br/><br/>
<input type="submit" value="Add Charity"/>
</form>
</body>
</html>