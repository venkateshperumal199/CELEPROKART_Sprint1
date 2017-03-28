<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
session.setAttribute("session","TRUE"); 
%>
<jsp:include page="adminHomeProcess.jsp"></jsp:include>
<%
}  
else  
{  
out.print("Sorry, email or password error");
%>  
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>