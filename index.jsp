<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, java.util.LinkedList, java.sql.PreparedStatement, java.sql.ResultSet, com.stock.utils.Database, com.stock.dao.Item, com.stock.dao.cmp.*" %>
<%!
	List<Item> all = new LinkedList<Item>();
%>
<%
	all.clear();
	String field = request.getParameter("field");
	String sort = request.getParameter("sort");
	Database db = new Database();
	PreparedStatement ps = db.getPS("SELECT * FROM ITEM_TBL");
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		all.add(new Item(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5), rs.getString(6), rs.getString(7), rs.getString(8)));
	}
	rs.close();
	db.close();
	if(field != null && sort != null) {
		switch(field+sort) {
			case "IdentityAscending":
				all.sort(new IdentityAscending());
				break;
			case "IdentityDescending":
				all.sort(new IdentityDescending());
				break;
			case "NameAscending":
				all.sort(new NameAscending());
				break;
			case "NameDescending":
				all.sort(new NameDescending());
				break;
			case "VendorAscending":
				all.sort(new VendorAscending());
				break;
			case "VendorDescending":
				all.sort(new VendorDescending());
				break;
			case "QuantityInStockAscending":
				all.sort(new QuantityInStockAscending());
				break;
			case "QuantityInStockDescending":
				all.sort(new QuantityInStockDescending());
				break;
			case "MaximumRetailPriceInStockAscending":
				all.sort(new MaximumRetailPriceAscending());
				break;
			case "MaximumRetailPriceDescending":
				all.sort(new MaximumRetailPriceDescending());
				break;
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View / Sort / All Items - Stock Management</title>
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
	background: #fff;
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

<!-- Sort Navigations Starts -->
<nav class="navbar navbar-default">
    <form class="navbar-form navbar-left" role="search">
    <div class="form-group">
		<label>Sorted Column: </label><%= (field==null?"Nothing":field) %><label>&nbsp;&nbsp;&nbsp;Order: </label><%= (sort==null?"Nothing":sort) %>&nbsp;&nbsp;&nbsp;
	</div>
	  <div class="form-group">
	  	<label for="fields">Sort By Field   </label>
	    <select class="form-control" id="fields" name="field">
		  <option value="Identity">Identity</option>
		  <option value="Name">Name</option>
		  <option value="MaximumRetailPrice">Maximum Retail Price</option>
		  <option value="QuantityInStock">Quantity In Stock</option>
		  <option value="Vendor">Vendor</option>
		</select>
	  </div>
	  <div class="form-group">
	  	<label for="sorting">on either   </label>
	    <select class="form-control" id="sorting" name="sort">
		  <option value="Ascending">Ascending</option>
		  <option value="Descending">Descending</option>
		</select>
	  </div>
	  <button type="submit" class="btn btn-primary">Get View</button>
	</form>
</nav>
<!-- Sort Navigations Ends -->
<table class="table table-bordered table-hover">
<tr><th>Identity</th><th>Name of Item</th><th>MRP. in Rs.</th><th>Disc. in %</th><th>Vendor Name</th><th>Qty</th><th>Edit</th><th>Delete</th></tr>
<%
for(Item each:all) {
%>
<tr>
<td><%= each.getIdentity() %></td>
<td><%= each.getName() %></td>
<td><%= each.getMaximumRetailPrice() %></td>
<td><%= each.getDiscount() %></td>
<td><%= each.getVendor() %></td>
<td><%= each.getQuantityInStock() %></td>
<td>
	<form action="edit.jsp" method="get">
		<input type="hidden" name="id" value="<%= each.getIdentity() %>" />
		<input type="submit" value="Edit" class="btn btn-info btn-xs" />
	</form>
</td>
<td>
	<form action="delete.jsp" method="get">
		<input type="hidden" name="id" value="<%= each.getIdentity() %>" />
		<input type="submit" value="Delete" class="btn btn-xs btn-danger" />
	</form>
</td>
</tr>
<%
} 
%>
</table>
</div>
</body>
</html>