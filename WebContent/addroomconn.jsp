<%@page import="java.sql.*"%>
<%@page import="java.util.regex.*"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   
  <link rel="stylesheet" href="adminstyle.css">  
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
 <jsp:include page="addroom.jsp" />
<%

  String roomn=request.getParameter("roomnum");
  Connection con=null;
  try{
	  out.println("<center>Added room Sucessfully" + roomn);
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","praveen24");
	  Statement st=con.createStatement();
	  PreparedStatement pre1 = con.prepareStatement("insert into availroom values('"+roomn+"')");
	  int rs1= pre1.executeUpdate();
		
	 
  }
  catch(Exception e)
  {
  System.out.print(e);
  e.printStackTrace();

  }
  
  
  %> 
</body>
</html>