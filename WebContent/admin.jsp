 <%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   
  <link rel="stylesheet" href="adminstyle.css">  
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <title>Admin</title>
 </head>
 <style>
body  {
  background-image: url("hotel.jpg");
}
</style>
 <body>  
        <center><h1 style="color:white;">WELCOME </h1></center>
  
    <div class="sidebar">
  <a href="admin.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
  <a href="addstaff.jsp"><i class="fa fa-plus-square"></i> Add Staff</a>
  <a href="updatestaff.jsp"><i class="fa fa-plus-square"></i>Update Staff</a>
  <a href="deletestaff.jsp"><i class="fa fa-minus-square"></i> Delete Staff</a>
   <a href="services.jsp"><i class="fa fa-minus-square"></i> Services</a>
  <a href="contretrieve.jsp"><i class="fa fa-fw fa-envelope"></i> View Feedback</a>
  <a href="about.jsp"><i class="fa fa-fw fa-envelope"></i> Add Feedback</a>
 <a href="login.jsp"onclick="logout()"><i class="fa fa-sign-out" style="font-size:24px"></i> Logout</a>
   <script>
            function logout()
            {
                alert("Are you sure you want to logout");
            }
        </script>
  
</a>
    </div>

        <form method="post" action="admin.jsp">
          
        </form>
    </body>
</html>






