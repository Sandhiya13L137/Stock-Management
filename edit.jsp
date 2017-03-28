<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, java.util.LinkedList, java.sql.PreparedStatement, java.sql.ResultSet, com.stock.utils.Database, com.stock.dao.Item, com.stock.dao.cmp.*" %>
<%!
	List<Item> all = new LinkedList<Item>();
%>
<%
	all.clear();
	String id = request.getParameter("id");
	Database db = new Database();
	PreparedStatement ps = db.getPS("SELECT * FROM ITEM_TBL WHERE ID=?");
	ps.setString(1, id);
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		all.add(new Item(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8)));
	}
	rs.close();
	db.close();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editing Item - Stock Management</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css" type="text/css" />
<style type="text/css">
body {
	background: #bdc3c7;
}
.main-content {
	width: 1024px;
	margin: 0 auto;
}
table {
	background: #efefef;
	border-radius: 3px;
}
</style>
</head>
<body>
<div class="main-content">

<!-- Header Navigations Starts -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">
        <span>Stock</span>
      </a>
    </div>
    <ul class="nav navbar-nav">
        <li><a href="add-new.jsp">Add New</a></li>
        <li><a href="apply-discount.jsp">Apply Discount</a></li>
        <li><a href="filter.jsp">Filter by Vendor</a></li>
      </ul>
    <form class="navbar-form navbar-right" action="search.jsp" role="search">
	  <div class="form-group">
	    <input type="text" class="form-control" name="q" placeholder="Search by Id or Name">
	  </div>
	  <button type="submit" class="btn btn-primary">Search</button>
	</form>
  </div>
</nav>
<!-- Header Navigations Ends -->
<%
if(all.size() > 0) {
	Item each = all.get(0);
%>
<form class="form-horizontal" action="update-item.jsp" style="background: #efefef; padding: 10px 0;">
  <input type="hidden" name="id" value="<%= each.getIdentity() %>" />
  <div class="form-group">
  	<label for="name" class="col-sm-4 control-label">Item Name</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" value="<%= each.getName() %>" id="name" name="name" placeholder="Item Name">
    </div>
  </div>
  <div class="form-group">
  	<label for="qty" class="col-sm-4 control-label">Item Quantity</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="qty" value="<%= each.getQuantityInStock() %>" name="qty" placeholder="Item Quantity">
    </div>
  </div>
  <div class="form-group">
  	<label for="mrp" class="col-sm-4 control-label">Item Max.Ret.Price</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" value="<%= each.getMaximumRetailPrice() %>" id="mrp" name="mrp" placeholder="Item MRP. in Rs.">
    </div>
  </div>
  <div class="form-group">
  	<label for="vendor" class="col-sm-4 control-label">Item Vendor Detail</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" value="<%= each.getVendor() %>" id="vendor" name="vendor" placeholder="Item Vendor">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-4 col-sm-6">
      <button type="submit" class="btn btn-primary">Update Item</button>
    </div>
  </div>
</form>
<%
}
%>
</div>
</body>
</html>