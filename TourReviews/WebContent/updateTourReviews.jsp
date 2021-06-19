<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
background-image: url('images/3.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  display: block;

}

h1{
	color :#d0cc95;
    font-weight: 70%;
	font-family:Arial, Helvetica, sans-serif;
    margin-right:15%;
	margin-left: 15%;
	
	font-size: 55px;
	line-height: 54px;
	}
label{
	color :#F5FFFA;
	font-weight: bold;
	font-family:Arial, Helvetica, sans-serif;
	display:inline-block;
	width:180px;
	font-size: 20px;
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

  <center>
  <h1>Update Tour Review </h1>
	<form action="update" method="post">
		<label>TourID</label> <input type="text" name="tourID" value="<%= tID %>" readonly><br>
		<label>Full Name</label><input type="text" name="fullName" value="<%= fullName %>"><br>
		<label>Contact</label><input type="text" name="contact" value="<%= contact %>"><br>
		<label>Tour Name</label><input type="text" name="tourName" value="<%= tourName %>"><br>
		<label>Number Of Days</label><input type="text" name="days" value="<%= days %>"><br>
		<label>Review</label><input type="text" name="review" value="<%= review %>"><br>
		
		<input type="submit" name="submit" value="Update Tour Review">
		
	
	</form>
  </center>

</body>
</html>