<%@page import="java.sql.*"%>
<%@page import="java.util.regex.*"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <jsp:include page="about.jsp" />
<%

String name=request.getParameter("cname");
String ph=request.getParameter("phone");
String addr=request.getParameter("address");
String msg=request.getParameter("msg");
Connection con=null;
try
       
{
	out.println("<h2>"+"Sent Sucessfully !!"+"</h2>" );
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","praveen24");
    Statement st=con.createStatement();
    PreparedStatement pre = con.prepareStatement("insert into contact values('"+name+"','"+ph+"','"+addr+"','"+msg+"')");
	int rs= pre.executeUpdate();
	
	 %><%
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>
    </body>
</html>