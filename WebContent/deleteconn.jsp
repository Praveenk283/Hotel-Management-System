<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*,java.util.*"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
 <jsp:include page="deletestaff.jsp" />
<%
String ids=request.getParameter("sid");
Connection con=null;


try
{
    /*out.println("Deleted Product "+ids+" Sucessfully");*/
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","praveen24");
    Statement st=con.createStatement();
    PreparedStatement pre = con.prepareStatement("delete FROM staff WHERE id= ? ");
	pre.setString(1, ids);
	int rs1=pre.executeUpdate();
	
	out.println("Deleted Sucessfully");
		con.close();

st.close();
con.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();

}
%>


</body>
</html>