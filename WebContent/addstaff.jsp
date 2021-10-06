 <%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Admin</title>
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
    </head>
    <body>
               <style>
            body  {
  background-color: #cccccc;
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
    

  
    <body>
    </table>  
        <form method="post" action="addstaffconn.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here </th>
                    </tr>
                </thead>
                <tbody>
                   <tr>
                        <td> Staff Id</td>
                        <td><input type="text" name="sid" value="" required="required" /></td>

                   </tr>
                    <tr>
                        <td> Name</td>
                        <td><input type="text" name="sname" value="" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" = name="phone" required="required">
                            </input></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td><textarea name="address" value="" rows="20" cols="70"required="required"></textarea></td>
                    </tr>
                    <tr>
                        <td>Salary</td>
                        <td><input type="number" name="salary" value=""required="required" /></td><br>
                    </tr>
                    
                        <td><input type="submit" value="Submit" required="required"/></td>
                        <td><input type="reset" value="Reset" required="required"/></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>


