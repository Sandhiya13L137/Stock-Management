<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<title>Owner Create Account</title>
</head>
<script>  
function validateform(){ 	
var name=document.myform.auth_user.value;  
var password=document.myform.auth_key.value; 
var r = document.getElementsByName("auth_type");
var c = -1;
var phone=document.myform.auth_phone.value; 
var email=document.myform.auth_email.value; 
for(var i=0; i < r.length; i++){
	   if(r[i].checked) {
	      c = i; 
	   }
	}
if (name==null || name==""){  
  alert("Username can't be empty..!");  
  return false;  
}
else if (password==null || password==""){  
	  alert("Password can't be empty..!");  
	  return false;  
	}
else if(password.length<6){  
  alert("Password must be at least 6 characters long..!");  
  return false;  
  } 
else if (c == -1) {
	alert("Please select the user type..!");
	return false;
}
else if (phone==null || phone==""){  
	  alert("Phone number can't be empty..!");  
	  return false;  
	}
else if (email==null || email==""){  
	  alert("Email can't be empty..!");  
	  return false;  
	}
else {
	return true;
}
}  
</script>
<style>
input#f1 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #66CC99;
	border : 2px solid #66CC99;
	width : 100px;
	height : 50px;
	border-radius: 5px;
}
button#f2 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #E74C3C;
	border : 2px solid #E74C3C;
	width : 100px;
	height : 50px;
	border-radius: 5px;
}
input[type=text] {
    width: 150%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}
input[type=password]:focus {
    border: 3px solid #59A9C2;
}
input[type=password] {
    width: 150%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}
input[type=text]:focus {
    border: 3px solid #59A9C2;
}
form {
  width:500px;
  margin: 100px 25px;
  padding:0px 0px 70px 0px;
}
body {
	background : url("bgimage2.jpg");
	background-size : cover;
}
</style> 
<body>
<form name="myform" action="CreateAccount.jsp" method="post" onsubmit="return validateform()">
<table align="right">
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="5px" color="#FFF0D6">User Name</font></b></td><td><input type="text" name="auth_user" placeholder="Username"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="5px" color="#FFF0D6">Password</font></b></td><td><input type="password" name="auth_key" placeholder="Password"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="5px" color="#FFF0D6">User Type</font></b></td>
<td><input id="one" type="radio" name="auth_type" value="Admin"><font size="4px" color="#ECF0F1">Admin</font>
&nbsp;&nbsp;&nbsp;&nbsp;
<input id="two" type="radio" name="auth_type" value="Manager"><font size="4px" color="#ECF0F1">Manager</font>
</td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="5px" color="#FFF0D6">Phone Number</font></b></td><td><input type="text" name="auth_phone" placeholder="Phonenumber"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="5px" color="#FFF0D6">Email</font></b></td><td><input type="text" name="auth_email" placeholder="Email"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td></td><td><input id="f1" type="submit" name="submit" value="Sign Up"></td><td><button id="f2" type="reset" value="Reset">Reset</button></td></tr>
</table>
</form>
</body>
</html>