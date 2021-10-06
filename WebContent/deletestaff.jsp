

<%@page import="java.sql.*"%>
<%@page import="java.util.regex.*"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>   
    <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="adminstyle.css">
    </head>

    <body>

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
                alert("Are you sure you want add the room");
            }
        </script>
  
</a>
    </div>
    
    
    </body>

            <html>
<body> 
        <form method="post" action="deleteconn.jsp">
            <center>
            <table border="2" width="30%" cellpadding="7"  >
                <thead>
                    <tr>
                        <th colspan="2">Select Item here</th>
                    </tr>
                </thead>
                <tbody>
                 
                   
                    <tr>
                        <td>Search by ID</td>
                        <td><input type="search" name="sid" value=""/></td>
                    </tr>
                    
                        <td><input type="submit" value="Submit" onclick="deletes()"required="required"/></td>
                        <script>
            function deletes()
            {
                alert("Are you sure you want to delete");
            }
        </script>
                        <td><input type="reset" value="Reset" required="required"/></td>
                    </tr>
                    
                </tbody>
            </table>
            </html>