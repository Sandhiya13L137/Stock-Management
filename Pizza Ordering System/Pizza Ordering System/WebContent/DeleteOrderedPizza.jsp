<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager,
 java.sql.Statement, java.util.LinkedList, java.util.List, com.pizza.dao.Pizza" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Pizza Hunt</title>
</head>
<body>
 <%
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con  =DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger"); 
    String id = request.getParameter("identity");
	PreparedStatement ps = con.prepareStatement("DELETE FROM PIZZA_CUSTOMER_ORDERS_TBL WHERE ORDER_ID=?");
	ps.setInt(1,Integer.parseInt(id));
	ps.executeUpdate();
	con.close();
	response.sendRedirect("ViewOrders.jsp");
 %>
</body>
</html>