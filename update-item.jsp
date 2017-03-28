<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, com.stock.utils.Database" %>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String qty = request.getParameter("qty");
	String mrp = request.getParameter("mrp");
	String vendor = request.getParameter("vendor");
	Database db = new Database();
	PreparedStatement ps = db.getPS("UPDATE ITEM_TBL SET NAME=?,QUANTITY_IN_STOCK=?,MAXIMUM_RETAIL_PRICE=?,VENDOR=? WHERE ID=?");
	ps.setString(5, id);
	ps.setString(1, name);
	ps.setInt(2, Integer.valueOf(qty));
	ps.setDouble(3, Double.valueOf(mrp));
	ps.setString(4, vendor);
	ps.executeUpdate();
	db.close();
	response.sendRedirect("index.jsp");
%>