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
</head>
<body>
 <jsp:include page="food.jsp" />
 
<%

String bname=request.getParameter("cname");
String bphone=request.getParameter("cphone");
String bitemname=request.getParameter("itemname");
String bqty=request.getParameter("qty");
int qty = Integer.parseInt(bqty);
 String bprice=request.getParameter("price");
 int price = Integer.parseInt(bprice);
  long total=0;
  total+= price * qty; 
  
  Connection con=null;
  
  try{
	  
	  out.println("<center>Total amount :" + total);
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","ramya7337");
	  Statement st=con.createStatement();
	  PreparedStatement pre1 = con.prepareStatement("insert into bill values('"+bname+"','"+bphone+"','"+bitemname+"','"+bqty+"','"+bprice+"','"+total+"')");
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