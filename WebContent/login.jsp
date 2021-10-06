<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    <body>
        
        <style>
 body {font-family: Arial, Helvetica, sans-serif;
 background-image: url("b.jpg");
 }


input[type=text], input[type=password] 
{
  width: 40%;
  padding: 12px 20px;
  margin: 18px 480px;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.signbutton {
  background-color: black;
  border: none;
  color: white;
  padding: 8px 45px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 15px 560px;
  cursor: pointer;
}

.signbutton:hover {
  opacity: 0.8;
}

button {
  background-color: gray;
  border: none;
  color: white;
  padding: 15px 39px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  margin: 35px 660px;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

.container {
  padding: 8px;
}


/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  
}


        </style>
        <h1 style="color:white;"><center>LOGIN</center></h1>
        <script>
            function validate(){
            var uname=document.loginform.uname.value;
              if (uname==""){
                  alert("Please enter username");
                  document.loginform.uname.focus();
                  return false;
              }
              if ((uname.length<4)||(uname.length>15))
                      {
                  alert("Username length is less than 4");
                  document.loginform.uname.focus();
                  return false;
              }
              var pass=document.loginform.psw.value;
              var illegalChar=/[\W_]/;
              if (pass==""){
                  alert("Please enter Password");
                  document.loginform.psw.focus();
                  return false;
              }
              else if((pass.length<3)||(pass.length>15))
                      {
                  alert("Password should be between 3 and 15 characters");
                  document.loginform.psw.focus();
                  return false;
        }
        else if(illegalChar.test(pass)){
            alert("Contains illegal passsword");
            document.loginform.psw.focus();
            return false;
        }
            }
        </script>
    </head>
       <form name="loginform"action="connection.jsp" method="get">
          
     <div class="container">
          
      <center><i style="color:white;" class="fa fa-user icon"></i><label style="color:white;" for="uname"><b>Username</b></label></center>
    <input type="text" placeholder="Enter Username" name="uname">
     
    <center><i style="color:white;" class="fa fa-key icon"></i><label for="psw" style="color:white;"><b>Password</b></label></center>
    <input type="password" placeholder="Enter Password" name="pass">
        
  <button type="submit" onclick="return validate()">Login</button>
      
 
  
  
    
     
  </div>
          
       
</form>  
     
</html>
