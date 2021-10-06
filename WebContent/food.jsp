<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food service</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   
  <link rel="stylesheet" href="adminstyle.css">  
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<div class="sidebar">
  <a href="admin.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
  <a href="addstaff.jsp"><i class="fa fa-plus-square"></i> Add Staff</a>
  <a href="updatestaff.jsp"><i class="fa fa-plus-square"></i>Update Staff</a>
  <a href="deletestaff.jsp"><i class="fa fa-minus-square"></i> Delete Staff</a>
   <a href="services.jsp"><i class="fa fa-plus-square"></i> Services</a>
  <a href="contretrieve.jsp"><i class="fa fa-fw fa-envelope"></i> View Feedback</a>
 <a href="login.jsp"onclick="logout()"><i class="fa fa-sign-out" style="font-size:24px"></i> Logout</a>
   <script>
            function logout()
            {
                alert("Are you sure you want to bill ?");
            }
        </script>
  
</a>
    </div>
     
        <form method="post" action="billfood.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">BILL</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                        <td> Customer Name</td>
                        <td><input type="text" name="cname" value="" required="required" /></td>

                   </tr>
                   <tr>
                        <td> Customer Phone</td>
			  <td><input type="text" name="cphone" value="" required="required" /></td>

                   </tr>
                   <tr>
                        <td> Item Name</td>
                        <td><input type="text" name="itemname" value="" required="required" /></td>

                   </tr>
                    <tr>
                        <td> Quantity</td>
                        <td><input type="text" name="qty" value="" required="required"/></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" = name="price" required="required">
                            </input></td>
                    </tr>
                    
                        <td><input type="submit" onclick="bill()" value="Submit" required="required"/></td>
                        <script>
            function bill()
            {
                alert("Are you sure you want to bill");
            }
        </script>
                        <td><input type="reset" value="Reset" required="required"/></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    
    
</body>
</html>