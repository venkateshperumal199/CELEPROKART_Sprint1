<%@page import="bean.ManageCelebritiesDAO"%>
<%@page import="bean.SignUpCelebrityBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.Collection,
                 java.util.ArrayList"%>
 <%@page import="bean.AdminHomePageDAO"%>
<%@page import="bean.AddCharityBean"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>  
<%@page import="bean.ManageCelebritiesDAO"%>  
<jsp:useBean id="obj_bean" class="bean.SignUpCelebrityBean"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>
</head>
<body>
<%  
ArrayList<AddCharityBean> listOfCharities=AdminHomePageDAO.listCharity();  
request.setAttribute("charities", listOfCharities);

ArrayList<SignUpCelebrityBean> listOfCelebrities=AdminHomePageDAO.listCelebrities();  
request.setAttribute("celebrities", listOfCelebrities);

String[] selectedStudentIds = request.getParameterValues("flag");
if(selectedStudentIds!=null){  
	request.setAttribute("listOFCelebrities", selectedStudentIds); 
} 

%>
<form action="AddCharity.jsp" method="post">
List of Charities<br/><br/>
<div style="width:150px;height:150px;line-height:3em;overflow:auto;padding:5px;">

<c:forEach var="charity" items="${charities}">
        <c:out value="${charity.name}" />
    </c:forEach>
</div><br/>
<input type="submit" value="Add Charity"/> <br/><br/>
</form>
<form name="manageCelebrities" method="post">
Manage Celebrities<br/><br/>
<div style="width:200px;height:150px;overflow:auto;padding:5px;">
<c:forEach var="celebrity" items="${celebrities}">
        <c:out value="${celebrity.emailID}" />
      --  <input type="checkbox" name="flag"><br/>
   
    </c:forEach>
    </div>
<input type="submit" value="Save Changes" onclick="<%

ManageCelebritiesDAO.ManageCelebrities(selectedStudentIds);


%>"/> <br/><br/>
</form>
</body>
</html>