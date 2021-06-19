<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Styles/commonStyles.css">
<style>
body {
background-image: url('images/8.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  display: block;

}
h1{
	color: #000000;
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

input[type=submit]{
   background-color:#002b80;
}

</style>

</head>
<body>
<center>
<h1> Insert Tour Review </h1>
	<form action="insert" method="post">
		<label>TourID</label> <input type="text" name="tourID" placeholder="Your Tour ID Only"><br>
		<label>Full Name</label><input type="text" name="fullName" placeholder="Full Name"><br>
	<label>	Contact</label><input type="text" name="contact" placeholder="Contact"><br>
	<label>	Tour Name</label><input type="text" name="tourName" placeholder="Tour Name"><br>
	<label>	Number Of Days</label><input type="text" name="days" placeholder="Number Of Days"><br>
		<label>Review</label><input type="text" name="review" placeholder="Maximum 1000 characters"> <br>
		
		<input type="submit" name="submit" value="Submit Tour Review">
		
	
	</form>

</center>
</body>
</html>