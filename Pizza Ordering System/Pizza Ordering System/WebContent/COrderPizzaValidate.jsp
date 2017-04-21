<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.PreparedStatement, java.sql.ResultSet, java.sql.Connection, java.sql.DriverManager, java.sql.Statement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<title>The Pizza Hunt</title>
<style>
div#d1 {
	font-family : "Comic Sans MS", cursive, sans-serif;
	font-size : 20px;
	background-color : #CCEBC0;
	}
div#d2 {
	font-family : "Comic Sans MS", cursive, sans-serif;
	font-size : 20px;
	background-color : #FE8A71;
}
Body {
	background : url("BGConfirm.jpg");
	background-size : cover;
}
</style>
</head>
<body>
<%
ServletContext hs=request.getServletContext();
String cname=(String)hs.getAttribute("cname");
     try {
		   String name=request.getParameter("auth_names");
		   String door=request.getParameter("auth_door");
		   String street=request.getParameter("auth_street");
		   String city=request.getParameter("auth_city");
		   String state=request.getParameter("auth_state");
		   String pin=request.getParameter("auth_pin");
 		   Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
           Statement st=con.createStatement();
           PreparedStatement pst = con.prepareStatement("INSERT INTO PIZZA_CUSTOMER_ORDERS_TBL(ORDER_ID, PIZZA_NAME, CUST_NAME, DOORNO, STREET, CITY, STATE, PINCODE) VALUES (CUSTOMER_PIZZA_ORDERS_SEQUENCE.NEXTVAL,?,?,?,?,?,?,?)");
           pst.setString(1,cname);
           pst.setString(2,name);
           pst.setString(3,door);
           pst.setString(4,street);
           pst.setString(5,city);
           pst.setString(6,state);
           pst.setInt(7, Integer.parseInt(pin));
           int i = pst.executeUpdate();
           if(i!=0){
        	   out.println("<div id='d1'>Please wait..<br>We are confirming your order...</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=CConfirmPizza.jsp'>");
           }
           else{
        	   out.println("<div id='d2'>Sorry..Unable to Place Order..Please try again in 5 secs...!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=CPizza.jsp'>");
           }
        }
    catch(Exception e) {
    	System.out.println(e);
    }
%>
</body>
</html>