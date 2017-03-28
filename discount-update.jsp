<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, com.stock.utils.Database" %>
<%
	String q = request.getParameter("q");
	Database db = new Database();
	PreparedStatement ps = db.getPS("UPDATE ITEM_TBL SET DISCOUNT=?");
	ps.setDouble(1, Double.valueOf(q));
	ps.executeUpdate();
	db.close();
	response.sendRedirect("index.jsp");
%>