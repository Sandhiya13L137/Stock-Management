<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager,
 java.sql.Statement, java.util.LinkedList, java.util.List, com.pizza.dao.*" %>
<%
 List<Pizza> all = new LinkedList<Pizza>();
 %>
 <%
 all.clear();
 String id = request.getParameter("identity");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
 Statement st=con.createStatement();
 PreparedStatement ps = con.prepareStatement("SELECT * FROM PIZZA_TBL WHERE PIZZA_IDENTITY=?");
 ps.setInt(1, Integer.parseInt(id));
 ResultSet rs = ps.executeQuery();
 while(rs.next()) {
	 all.add(new Pizza(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDouble(6)));
 }
 rs.close();
 con.close();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<script>  
function validateform(){ 	
var name=document.myform.auth_names.value;  
var door=document.myform.auth_door.value; 
var street=document.myform.auth_street.value; 
var city=document.myform.auth_city.value; 
var state=document.myform.auth_state.value;
var pin=document.myform.auth_pin.value;
if (name==null || name==""){  
  alert("Name can't be empty..!");  
  return false;  
}
else if (door==null || door==""){  
	  alert("Door Number can't be empty..!");  
	  return false;  
}
else if (street==null || street==""){  
	  alert("Street name can't be empty..!");  
	  return false;  
	}
else if (state==null || state==""){  
	  alert("State can't be empty..!");  
	  return false;  
	}
else if (pin==null || pin==""){  
	  alert("Pincode can't be empty..!");  
	  return false;  
	}
else {
	return true;
}
}  
</script>
<style>
.t1 table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    margin : 0px auto;
}

.t1 td, .t1 th {
    border: 1px solid #67537A;
    text-align: center;
    padding: 8px;
}
.t1 tr:nth-child(even) {
     background-color: #C2B6D6;
}
.t1 tr:nth-child(odd) {
    background-color:#F2E4F9;
}
input#f1 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #66CC99;
	border : 2px solid #66CC99;
	width : 170px;
	height : 35px;
	border-radius: 5px;
}
button#f2 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #E74C3C;
	border : 2px solid #E74C3C;
	width : 100px;
	height : 35px;
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
  width:580px;
  margin: 40px 650px;
  padding:0px 0px 70px 0px;
}

Body {
	background : url("corder2.jpg");
	background-repeat: no-repeat;
	background-position:100px 150px;
	background-color : #D3CED8;
}
p {
	text-align : right;
}
</style> 
<title>The Pizza Hunt</title>
</head>
<body>
<table class="t1">
<tr></tr><tr></tr>
<font size="4.3px" color="#560F47"><b><i>You have Ordered...</b></i></font>
<tr></tr>
<tr>
<th><font size="3px" color="#383745">PIZZA NAME</font></th>
<th><font size="3px" color="#383745">TOPPINGS</font></th><th><font size="3px" color="#383745">SIZE</font></th>
<th><font size="3px" color="#383745">TYPE</font></th><th><font size="3px" color="#383745">PRICE</font></th>
</tr>
<%
for(Pizza each:all) {
%>
<tr>
<td><%=each.getName() %></td>
<td><%=each.getToppings() %></td>
<td><%=each.getSize() %></td>
<td><%=each.getType() %></td>
<td><%=each.getPrice() %></td>
</tr>
<%} %>
</table>
<tr><font size="4px" color="#560F47"><b><center><p><i><u>Payment Mode</u> : Cash On Delivery (COD)</i></p></center></b></font></tr>
<form name="myform" action="COrderPizzaValidate.jsp" method="post" onsubmit="return validateform()">
<table id="t2">
<tr></tr><tr></tr><tr></tr><tr></tr><tr>
<tr><font size="4px" color="#560F47"><b><i>Please Enter Your Address..</i></b></font></tr>
<tr><td><b><font size="4px">Name</font></b></td><td><input type="text" name="auth_names" placeholder="Customer Name" size="35"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">Door Number</font></b></td><td><input type="text" name="auth_door" placeholder="Door Number"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">Street</font></b></td><td><input type="text" name="auth_street" placeholder="Street Name"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">City</font></b></td><td><input type="text" name="auth_city" placeholder="City"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">State</font></b></td><td><input type="text" name="auth_state" placeholder="State"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td><b><font size="4px">Pincode</font></b></td><td><input type="text" name="auth_pin" placeholder="Pincode"></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td></td><td><input id="f1" type="submit" name="submit" value="Confirm Order"></td><td><button id="f2" type="reset" value="Reset">Reset</button></td></tr>
</table>
</form>
</body>
</html>