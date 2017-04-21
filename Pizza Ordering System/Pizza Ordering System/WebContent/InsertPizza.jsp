<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager, java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div#d1 {
	font-family : "Comic Sans MS", cursive, sans-serif;
	font-size : 28px;
	
}
div#d2 {
	font-family : "Comic Sans MS", cursive, sans-serif;
	font-size : 28px;
}
body {
	background : url("BGConfirm.jpg");
	background-size:cover;
}
</style>
<link rel="icon" href="favicon1.png" type="image/png">
<title>Owner-Insert Pizza</title>
</head>
<body bgcolor="#F3D89F">
<%
     try {
		   String name=request.getParameter("auth_name");
		   String top=request.getParameter("auth_toppings");
		   String size=request.getParameter("auth_size");
		   String type=request.getParameter("auth_type");
		   String price=request.getParameter("auth_price");
 		   Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
           Statement st=con.createStatement();
           PreparedStatement pst = con.prepareStatement("INSERT INTO PIZZA_TBL(PIZZA_IDENTITY, PIZZA_NAME, TOPPINGS, PIZZA_SIZE, PIZZA_TYPE, PRICE) VALUES (PIZZA_ID_SEQUENCE.NEXTVAL,?,?,?,?,?)");
           pst.setString(1,name);
           pst.setString(2,top);
           pst.setString(3,size);
           pst.setString(4,type);
           pst.setDouble(5, Double.parseDouble(price));
           int i = pst.executeUpdate();
           if(i!=0){
        	   out.println("<div id='d1' align='center'>Pizza table has been succesfully updated...Please wait to continue...!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=Pizza.jsp'>");
           }
           else {
        	   out.println("<div id='d2'>Sorry..Unable to update Pizza table..Please try again in 5 secs...!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=AddNewPizza.jsp'>");
           }
        }
    catch(Exception e) {
    	System.out.println(e);
    }
%>
</body>
</html>