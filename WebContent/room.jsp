<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Room booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   
  <link rel="stylesheet" href="adminstyle.css">  
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>

<h1><center>ROOM SERVICES</center></h1>

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
    
<form method="post" action="roomconn.jsp">
            <center>
            <table border="2" width="30%" cellpadding="7"  >
                <thead>
                    <tr>
                        <th colspan="2">Select Room here</th>
                    </tr>
                </thead>
                <tbody>
                 
                  <tr>
                  
                  </tr> 
                    <tr>
                        <td> Room Number</td>
                        <td><input type="text" name="room_no" value="" required="required" /></td>
                   </tr>
                   
                    
                        <td><input type="submit" value="Submit" onclick="book()"required="required"/></td>
                        <script>
            function book()
            {
                alert("Are you sure you want to Book the room");
            }
        </script>
                        <td><input type="reset" value="Reset" required="required"/></td>
                    </tr>
                    
                </tbody>
            </table>

</body>
</html>