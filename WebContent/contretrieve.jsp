
<%@page import="java.sql.*"%>
<%@page import="java.util.regex.*"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <title>Messages</title>
    <body>
    <style>
                body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}

//CONTACT NOTIFICATION//

body {
  font-family: Arial, Helvetica, sans-serif;
}

.notification {

  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}


.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}
    </style>
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
    
    
    <style>
 #customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
}

#customers td, #customers th {
  border: 1px solid black;
  padding: 8px;
}

#customers tr:nth-child {background-color: #f2f2f2;}

#customers tr:hover {background-color:#f2f2f2 ;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #f2f2f2;
  color: white;
}
</style>
<form action="contretrieve.jsp" method="post">
<h2 align="center">
    <font><strong>Your Feedbacks</strong></font></h2>
    
<table id="customers" align="right" cellpadding="5" cellspacing="5" border="1" >
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Full Name</b></td>
<td><b>Phone</b></td>
<td><b>Address</b></td>
<td><b>Message</b></td>
</tr>
<%

 String connectionURL="jdbc:odbc:digitalDSN";
Connection con;
Statement st;
ResultSet rs;

try{  
	Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","ramya7337");
    st=con.createStatement();
String sql ="select * from contact";
rs = st.executeQuery(sql);
 
while(rs.next()){
%>
<tr bgcolor="#DEB887">
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("phone")%></td>
<td><%=rs.getString("addr")%></td>
<td><%=rs.getString("msg")%></td>
</tr>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<input type="button" name="ok" value="ok"/>

</form>
    </body>
</html>