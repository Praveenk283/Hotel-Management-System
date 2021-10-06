<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
<style>
body  {
  background-image: url("hotel.jpg");
}
</style>
</head>
<body>

<h1 style="color:white;"><center>Hotel Elite</center></h1>
  <form method="post" action="contconn.jsp">
        
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2" style="color:white;">Enter Feedback Here </th>
                    </tr>
                </thead>
                <tbody>
                   
                    <tr>
                        <td style="color:white;"> Name</td>
                        <td><input type="text" name="cname" value="" required="required"/></td>
                    </tr>
                    <tr>
                        <td style="color:white;">Phone</td>
                        <td><input type="text" = name="phone" required="required">
                            </input></td>
                    </tr>
                     <tr>
                        <td style="color:white;">Address</td>
                        <td><textarea name="address" value="" rows="10" cols="40"required="required"></textarea></td>
                    </tr>
                    <tr>
                        <td style="color:white;">Message</td>
                        <td><textarea name="msg" value="" rows="10" cols="40"required="required"></textarea></td>
                    </tr>
                    
                    
                        <td><input type="submit" value="Submit" required="required"/></td>
                        <td><input type="reset" value="Reset" required="required"/></td>
                    </tr>
                    
                </tbody>
            </table>
        
        </form>

</body>
</html>