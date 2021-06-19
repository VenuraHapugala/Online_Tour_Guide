<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>
body {
background-image: url('images/7.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  display: block;

}
label{
	color :#F5FFFA;
	font-weight: bold;
	font-family:Arial, Helvetica, sans-serif;
	display:inline-block;
	width:200px;
	font-size: 20px;
	
	 margin-left: 10%;
}

h1 {
    color:#008080;
    font-weight: 70%;
	font-family:Arial, Helvetica, sans-serif;
    margin-right:15%;
	margin-left: 15%;
	
	font-size: 55px;
	line-height: 54px;
   
}
input[type=submit]{
  margin-left: 22%;
}
</style>
<link rel="stylesheet" href="Styles/commonStyles.css">
</head>
<body>
<%
		String tID=request.getParameter("tID");
	 	String fullName=request.getParameter("fullName");
	 	String contact=request.getParameter("contact");
	 	String tourName=request.getParameter("tourName");
	 	String days=request.getParameter("days");
	 	String review=request.getParameter("review");
	%>
<div>
<h1> Tour Review Delete </h1>

<form action="delete" method="post">
		<label>TourID</label> <input type="text" name="tourID" value="<%= tID %>" readonly><br>
		<label>Full Name</label><input type="text" name="fullName" value="<%= fullName %>" readonly><br>
		<label>Contact</label><input type="text" name="contact" value="<%= contact %>" readonly><br>
		<label>Tour Name</label><input type="text" name="tourName" value="<%= tourName %>" readonly><br>
		<label>Number Of Days</label><input type="text" name="days" value="<%= days %>" readonly><br>
		<label>Review</label><input type="text"  name="review" value="<%= review %>" readonly><br><br><br>
		
		<input type="submit" name="submit" value="Delete Tour Review">
		
	
	</form>
</div>
</body>
</html>