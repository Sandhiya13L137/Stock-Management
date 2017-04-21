<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>  
function pizzaValidate(){  	
var name=document.myform.auth_name.value;  
var top=document.myform.auth_toppings.value; 
var size=document.myform.auth_size.value; 
var type=document.myform.auth_type.value; 
var price=document.myform.auth_price.value; 
if (name==null || name==""){  
  alert("Pizza Name can't be empty..!");  
  return false;  
}
else if (top==null || top==""){  
	  alert("Toppings can't be empty..!");  
	  return false;  
	}
else if (size==null || size=="") {
	alert("Please select the Pizza Size..!");
	return false;
}
else if (type==null || type=="") {
	alert("Please select the Pizza Type..!");
	return false;
}
else if (price==null || price==""){  
	  alert("Price can't be empty..!");  
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
	border : 1px solid #66CC99;
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
input[type=text]:focus {
    border: 2px solid #59A9C2;
}
form {
  width:550px;
  margin: 100px 825px;
}
body {
	background : url("EditPizza.jpg");
	background-size : cover;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<title>Owner-Add New Pizza</title>
</head>
<body>
<form align="right" name="myform" action="InsertPizza.jsp" method="post" onsubmit="return pizzaValidate()">
<table >
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">&nbsp;&nbsp;&nbsp;&nbsp;Pizza Name</font></b></td><td><input type="text" size="35" name="auth_name" placeholder="Pizza Name"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">&nbsp;&nbsp;&nbsp;&nbsp;Toppings</font></b></td><td><input type="text" name="auth_toppings" placeholder="Toppings"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">&nbsp;&nbsp;&nbsp;&nbsp;Size</font></b></td><td><input type="text" name="auth_size" placeholder="Small (or) Medium (or) Large"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">&nbsp;&nbsp;&nbsp;&nbsp;Type</font></b></td><td><input type="text" name="auth_type" placeholder="Veg (or) Non-Veg"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">&nbsp;&nbsp;&nbsp;&nbsp;Price(in Rs.)</font></b></td><td><input type="text" name="auth_price" placeholder="Pizza Price"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td></td><td><input id="f1" type="submit" name="submit" value="Add"></td><td><button id="f2" type="reset" value="Reset">Reset</button></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
</table>
</form>
</body>
</html>