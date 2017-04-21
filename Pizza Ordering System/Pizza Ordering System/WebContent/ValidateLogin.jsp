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
<link rel="icon" href="favicon1.png" type="image/png">
<title>Owner Login Validation</title>
</head>
<body>
<%
     try {
		   String user=request.getParameter("auth_user");
		   String pass=request.getParameter("auth_key");
 		   Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02", "scott", "tiger");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("SELECT * FROM PIZZA_OWNER_TBL WHERE USER_NAME='"+user+"' AND USER_PASSWORD='"+pass+"'");
           int count=0;
           while(rs.next()) {
          	 count++;
           }
           if(count>0) {
        	   out.println("<div id='d1'>Welcome " + user + ".....! <br>You are successfully logged in.....!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=Pizza.jsp'>");
           }
           else {
        	   out.println("<div id='d2'>Sorry..Unable to Login..!<br>Incorrect username or password..!<br>Please try again in 5 secs...!</div>");
        	   out.println("<meta http-equiv='Refresh' content='5;url=FrontPage.jsp'>");
          }
        }
    catch(Exception e) {
    	System.out.println(e);
    }
%>
</body>
</html>