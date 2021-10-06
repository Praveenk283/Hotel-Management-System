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
     <div class="sidebar">
  <a href="admin.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
  <a href="addstaff.jsp"><i class="fa fa-plus-square"></i> Add Staff</a>
  <a href="updatestaff.jsp"><i class="fa fa-plus-square"></i>Update Staff</a>
  <a href="deletestaff.jsp"><i class="fa fa-minus-square"></i> Delete Staff</a>
   <a href="services.jsp"><i class="fa fa-minus-square"></i> Services</a>
  <a href="contretrieve.jsp"><i class="fa fa-fw fa-envelope"></i> View Feedback</a>
 <a href="login.jsp"onclick="logout()"><i class="fa fa-sign-out" style="font-size:24px"></i> Logout</a>
   <script>
            function logout()
            {
                alert("Are you sure you want add the room");
            }
        </script>
  
</a>
    </div>
    
<%
String ids=request.getParameter("sid");
String staffname=request.getParameter("sname");
String ph=request.getParameter("phone");
String addr=request.getParameter("address");
String sal=request.getParameter("salary");
Connection con=null;
try
       
{
	out.println("<center>Added Sucessfully" + ids);
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","praveen24");
    Statement st=con.createStatement();
    PreparedStatement pre = con.prepareStatement("insert into staff values('"+ids+"','"+staffname+"','"+ph+"','"+addr+"')");
	int rs= pre.executeUpdate();
	
	 %><jsp:forward page="addstaff.jsp" /><%
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>
    </body>
</html>