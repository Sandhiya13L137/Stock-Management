<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="favicon1.png" type="image/png">
<title>The Pizza Hunt</title>
<style>
Body {
	background : url("corder4.gif");
	background-repeat: no-repeat;
	background-position:right top;
	background-color : #C878AB;
	
}
div#d1 {
	font-size : 21px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	}
div#d2 {
	font-size : 21px;
	font-family : "Comic Sans MS", cursive, sans-serif;
}
div#d3 {
	font-size : 21px;
	font-family : "Comic Sans MS", cursive, sans-serif;
}
input#d4 {
	font-size : 18px;
	font-family : "Comic Sans MS", cursive, sans-serif;
	background-color : #D6C0CE;
	border : 2px solid #C878AB;
	width : 200px;
	height : 40px;
	border-radius: 5px;
}
</style>
</head>
<body>
<div id="d1">
<font color="#EEC3D6">Your Order has been successfully placed..!<br>
We will deliver it within 40 Minutes..!</font><br><br>
</div  >
<div id="d2">
<b>Payment Mode : Cash On Delivery (COD)</b><br><br>
</div>
<form action="CPizza.jsp">
<input id="d4" type="submit" value="Continue Ordering">
</form>
<br><br>
<img src="corder3.png">
<div  id="d3">
<marquee width="30%" scrollamount="4">Thank You...Visit Again...!</marquee>
</div>
</body>
</html>