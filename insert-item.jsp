<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, com.stock.utils.Database" %>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String qty = request.getParameter("qty");
	String mrp = request.getParameter("mrp");
	String discount = request.getParameter("discount");
	String vendor = request.getParameter("vendor");
	String mdate = request.getParameter("mdate");
	String edate = request.getParameter("edate");
	Database db = new Database();
	PreparedStatement ps = db.getPS("INSERT INTO ITEM_TBL VALUES(?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setInt(3, Integer.valueOf(qty));
	ps.setDouble(4, Double.valueOf(mrp));
	ps.setDouble(5, Double.valueOf(discount));
	ps.setString(6, vendor);
	ps.setString(7, mdate);
	ps.setString(8, edate);
	ps.executeUpdate();
	db.close();
	response.sendRedirect("index.jsp");
%>