<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager,
 java.sql.Statement, java.util.LinkedList, java.util.List, com.pizza.dao.*" %>
 <%
 List<PizzaOrders> all = new LinkedList<PizzaOrders>();
 %>
 <%
 all.clear();
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("SELECT * FROM PIZZA_CUSTOMER_ORDERS_TBL");
 while(rs.next()) {
	 all.add(new PizzaOrders(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),rs.getInt(8)));
 }
 rs.close();
 con.close();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    margin : 40px auto;
}

td, th {
    border: 1px solid #DE8D3C;
    text-align: center;
    padding: 8px;
}

tr:nth-child(even) {
     background-color: #FFE6CC;
}
tr:nth-child(odd) {
    background-color:#FFCC99;
}
Body {
	background : url("Views.jpg");
	background-size : cover;
}
input#b2 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #FE8A71;
	border : 2px solid #FE8A71;
	width : 100px;
	height : 30px;
	border-radius: 5px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<title>The Pizza Hunt</title>
</head>
<body bgcolor="#F6EFDF">
<table cellpadding="30" cellspacing="40" >
<tr><th><font size="3px" color="#383745">ORDER ID</font></th><th><font size="3px" color="#383745">PIZZA NAME</font></th><th>
<font size="3px" color="#383745">CUSTOMER NAME</font></th><th><font size="3px" color="#383745">DOOR NO</font></th>
<th><font size="3px" color="#383745">STREET</font></th><th><font size="3px" color="#383745">CITY</font></th>
<th><font size="3px" color="#383745">STATE</font></th><th><font size="3px" color="#383745">PINCODE</font></th>
<th><font size="3px" color="#383745">COMPLETED ORDER</font></th></tr>
<%
for(PizzaOrders each:all) {
%>
<tr>
<td><%=each.getOrderId() %></td>
<td><%=each.getPizzaName() %></td>
<td><%=each.getCustomerName() %></td>
<td><%=each.getDoorNo() %></td>
<td><%=each.getStreet() %></td>
<td><%=each.getCity() %></td>
<td><%=each.getState() %></td>
<td><%=each.getPincode() %></td>
<td>
<form action="DeleteOrderedPizza.jsp" method="post">
<input type="hidden" name="identity" value="<%=each.getOrderId() %>"/>
<input id="b2" type="submit" value="Yes"/>
</form>
</td>
</tr>
<%} %>
</table>
</body>
</html>