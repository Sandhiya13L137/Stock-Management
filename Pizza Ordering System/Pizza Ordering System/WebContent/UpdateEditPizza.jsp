<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager,
 java.sql.Statement, java.util.LinkedList, java.util.List, com.pizza.dao.Pizza" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<title>Owner-Update Edit Pizza</title>
</head>
<body>
<%
	String id=request.getParameter("identity");
	String name=request.getParameter("auth_name");
	String top=request.getParameter("auth_toppings");
	String size=request.getParameter("auth_size");
	String type=request.getParameter("auth_type");
	String price=request.getParameter("auth_price");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
	PreparedStatement ps = con.prepareStatement("UPDATE PIZZA_TBL SET PIZZA_NAME=?,TOPPINGS=?,PIZZA_SIZE=?,PIZZA_TYPE=?,PRICE=? WHERE PIZZA_IDENTITY=?");
	ps.setInt(6,Integer.parseInt(id));
	ps.setString(1,name);
    ps.setString(2,top);
    ps.setString(3,size);
    ps.setString(4,type);
    ps.setDouble(5, Double.parseDouble(price));
	ps.executeUpdate();
	con.close();
	response.sendRedirect("Pizza.jsp");
%>
</body>
</html>