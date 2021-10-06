
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String username=request.getParameter("uname").trim();
String password=request.getParameter("pass").trim();

if(username.equals("admin") && password.equals("admin123"))
{
    %> <jsp:forward page="admin.jsp"/> <%
}

else{
	%><script>window.alert("invalid password or id");
    window.history.back();</script><%
}

%>



    
      
        
        