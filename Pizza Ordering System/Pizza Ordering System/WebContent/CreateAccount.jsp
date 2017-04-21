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
<title>Create Account Owner</title>
</head>
<body>
<%
     try {
		   String user=request.getParameter("auth_user");
		   String pass=request.getParameter("auth_key");
		   String type=request.getParameter("auth_type");
		   String phone=request.getParameter("auth_phone");
		   String email=request.getParameter("auth_email");
 		   Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
           Statement st=con.createStatement();
           PreparedStatement pst = con.prepareStatement("INSERT INTO PIZZA_OWNER_TBL(USER_ID, USER_NAME, USER_PASSWORD, USER_TYPE, USER_PHONENO, USER_EMAIL) VALUES (PIZZA_OWNER_ID_SEQUENCE.NEXTVAL,?,?,?,?,?)");
           pst.setString(1,user);
           pst.setString(2,pass);
           pst.setString(3,type);
           pst.setString(4,phone);
           pst.setString(5,email);
           int i = pst.executeUpdate();
           if(i!=0){
        	   out.println("<div id='d1' align='center'>Your account has been succesfully Created...Please Login to continue...!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=OwnerLogin.jsp'>");
           }
           else{
        	   out.println("<div id='d2' align='center'>Sorry..Unable to create your account..Please try again in 5 secs...!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=FrontPage.jsp'>");
           }
        }
    catch(Exception e) {
    	System.out.println(e);
    }
%>
</body>
</html>