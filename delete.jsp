<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, com.stock.utils.Database" %>
<%
	String id = request.getParameter("id");
	Database db = new Database();
	PreparedStatement ps = db.getPS("DELETE FROM ITEM_TBL WHERE ID=?");
	ps.setString(1, id);
	ps.executeUpdate();
	db.close();
	response.sendRedirect("index.jsp");
%>