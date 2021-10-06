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

   <jsp:include page="room.jsp" />
  <%
  
  String roomno=request.getParameter("room_no");

  int price=0;

  if(roomno.equals("101")){
  	
  		price=1000;
  		
  	}
  else if(roomno.equals("102")){
  	price=2000;	
  

  }
  else if(roomno.equals("103")){
  	price=3000;	
  	

  }
  else if(roomno.equals("104")){
  	price=4000;
  	
  	
  }
  else if(roomno.equals("105")){
  	price=5000;
  	
  	
  }


  
  Connection con=null;
  try{
	  out.println("<center>Booked room Sucessfully :" + roomno);
	  out.println("<center>Amount to be paid : " + price);
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","praveen24");
	  Statement st=con.createStatement();
	  
		PreparedStatement pre1 = con.prepareStatement("select * from bookedroom");
		ResultSet rs2= pre1.executeQuery();
		int log=0;
		while(rs2.next())
		{
			if(roomno.equals(rs2.getString("roomno")))
			{
				%>
				<script>
				window.alert("Sorry...duplicate entries found");
                window.history.back();
				</script>
				<%
			}
		}


	  PreparedStatement pre = con.prepareStatement("insert into bookedroom values('"+roomno+"','"+price+"')");
		int rs1= pre.executeUpdate();
		
		PreparedStatement pre2 = con.prepareStatement("delete from availroom where roomno= ?");
		pre2.setString(1, roomno);
		int rs= pre2.executeUpdate();
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