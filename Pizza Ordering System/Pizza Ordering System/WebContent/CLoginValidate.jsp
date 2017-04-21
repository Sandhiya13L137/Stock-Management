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
Body {
	background : url("BGConfirm.jpg");
	background-size : cover;
}
</style>
<link rel="icon" href="favicon1.png" type="image/png">
<title>The Pizza Hunt</title>
</head>
<body bgcolor="#F3C9BF">
<%
     try {
		   String user=request.getParameter("auth_user");
		   String pass=request.getParameter("auth_key");
 		   Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("SELECT * FROM PIZZA_CUSTOMER_TBL WHERE CUSTOMER_NAME='"+user+"' AND CUSTOMER_PASSWORD='"+pass+"'");
           int count=0;
           while(rs.next()) {
          	 count++;
           }
           if(count>0) {
        	   out.println("<p id='p1'><div id='d1' align='center'>Welcome " + user + ".....! <br>You are successfully logged in.....!<br>Please wait...Loading...</div></p>");
        	   out.println("<meta http-equiv='Refresh' content='4;url=CPizza.jsp'>");
           }
           else {
        	   out.println("<p id='p1'><div id='d2' align='center'>Sorry..Unable to Login..!<br>Incorrect username or password..!<br>Please try again in 4 secs...!</div></p>");
        	   out.println("<meta http-equiv='Refresh' content='4;url=CHomePage.jsp'>");
          }
        }
    catch(Exception e) {
    	System.out.println(e);
    }
%>
</body>
</html>