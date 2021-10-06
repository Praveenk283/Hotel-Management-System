<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>remove Page</title>
    </head>
    <body>
        <%
         try
         {
            String sid=request.getParameter("sid");
            String phone=request.getParameter("phone");
         
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","praveen24");
            Statement st=con.createStatement();
            int log=0;
			PreparedStatement pre1 = con.prepareStatement("select * from staff");
			 ResultSet rs2=pre1.executeQuery();
	            while(rs2.next())
	            {
	               if(rs2.getString("phone").equals(phone))
	               {
	            	   
	            	   PreparedStatement pre = con.prepareStatement("update staff set phone='"+phone+"' WHERE id='"+sid+"';");
	   				 log=1;
	            	   break;
	               }
	            }
	            
	           
	            if(log==0)
	            {
	            	
                }
	            %><% 
	           
        }
         catch(Exception e)
         {
            System.out.println(e); 
         }
            %>                    
    </body>
</html>