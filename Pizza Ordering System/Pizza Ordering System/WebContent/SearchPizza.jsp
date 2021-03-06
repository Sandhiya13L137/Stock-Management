<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager,
 java.sql.Statement, java.util.LinkedList, java.util.List, com.pizza.dao.Pizza" %>
<%!
	List<Pizza> all = new LinkedList<Pizza>();
%>
<%
	all.clear();
	String q = request.getParameter("q");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
	PreparedStatement ps = con.prepareStatement("SELECT * FROM PIZZA_TBL WHERE PIZZA_IDENTITY LIKE ? OR PIZZA_NAME LIKE ?");
	ps.setString(1, "%"+q+"%");
	ps.setString(2, "%"+q+"%");
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
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    margin : 40px auto;
}

td, th {
    border: 1px solid #6BB18C;
    text-align: center;
    padding: 8px;
}
tr:nth-child(even) {
     background-color: #F4FFE0;
}
tr:nth-child(odd) {
    background-color:#B7EF9C;
}
input#d1 {
	font-size : 15px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #D9F5BE;
	border : 1px solid #59AE7F;
	width : 200px;
	height : 40px;
	border-radius: 5px;
}
input#d2 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #E74C3C;
	border : 2px solid #E74C3C;
	width : 120px;
	height : 40px;
	border-radius: 5px;
}
input#b1 {
	font-size : 14px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #92DBC7;
	border : 1px solid #92DBC7;
	width : 100px;
	height : 30px;
	border-radius: 5px;
}
input#b2 {
	font-size : 14px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #FE8A71;
	border : 2px solid #FE8A71;
	width : 100px;
	height : 30px;
	border-radius: 5px;
}
input#search1 {
	font-size : 13px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #91CED7;
	border : 1px solid #2980B9;
	width : 100px;
	height : 40px;
	border-radius: 5px;
}
input#search2 {
	font-size : 13px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	border : 1px solid #C6F0DA;
	width : 300px;
	height : 30px;
	border-radius: 5px;
}
Body {
	background : url("CMain2.jpg");
	background-size : cover;
}
input#search2[type=text]:focus {
    border: 2px solid #59A9C2;
}
button#reset {
	font-size : 13px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #FF7E55;
	border : 1px solid #E74C3C;
	width : 100px;
	height : 40px;
	border-radius: 5px;
}
</style>
<link rel="icon" href="favicon1.png" type="image/png">
<title>The Pizza Hunt</title>
</head>
<body>
<table>
<form action="SearchPizza.jsp">
<input id="search2" name="q" type="text" placeholder="Search by ID (or) NAME" required>
<input id="search1" type="submit" value="Search">
<button id="reset" type="reset" value="Reset">Reset</button>
</form>
<form action="FrontPage.jsp">
<input id="d2" type="submit" value="Logout" style="float: right;">
</form>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form action="AddNewPizza.jsp">
<input id="d1" type="submit" value="Add New Item" style="float: left;">
</form>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<form action="ViewOrders.jsp">
<input id="d1" type="submit" value="View Orders">
</form>
</table>
<table cellpadding="30" cellspacing="40" >
<tr><th><font size="3px" color="#383745">IDENTITY</font></th><th><font size="3px" color="#383745">NAME</font></th><th>
<font size="3px" color="#383745">TOPPINGS</font></th><th><font size="3px" color="#383745">SIZE</font></th>
<th><font size="3px" color="#383745">TYPE</font></th><th><font size="3px" color="#383745">PRICE</font></th>
<th><font size="3px" color="#59A9C2">EDIT</font></th><th><font size="3px" color="#E74C3C">DELETE</font></th></tr>
<%
for(Pizza each:all) {
%>
<tr>
<td><%=each.getIdentity() %></td>
<td><%=each.getName() %></td>
<td><%=each.getToppings() %></td>
<td><%=each.getSize() %></td>
<td><%=each.getType() %></td>
<td><%=each.getPrice() %></td>
<td>
<form action="EditPizza.jsp" method="post">
<input type="hidden" name="identity" value="<%=each.getIdentity() %>"/>
<input id="b1" type="submit" value="Edit"/>
</form>
</td>
<td>
<form action="DeletePizza.jsp" method="post">
<input type="hidden" name="identity" value="<%=each.getIdentity() %>"/>
<input id="b2" type="submit" value="Delete"/>
</form>
</td>
</tr>
<%
}
%>
</table>
</body>
</html>