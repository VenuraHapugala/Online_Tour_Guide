<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tour Reviews</title>


<style>
body {
background-image: url('images/1.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100% 100%;
  display: block;

}

h1 {
   color: white;
   font-weight: 70%;
	text-transform: uppercase;
	color: #191970;
	font-style: oblique;
	font-family: "Times New Roman", Times, serif;
    margin-right:15%;
	margin-left: 15%;
	
	font-size: 55px;
	line-height: 54px;
   
}
input[type=text],textarea {
  width: 20%;
  padding: 12px;
  border: 3spx solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  background-color:#e6f9ff;
  opacity: 0.85;
}

input[type=submit] {
  background-color: #3399ff;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #66ffff;
}

label{
	color : #2F4F4F;
	font-weight: bold;
	font-family:Arial, Helvetica, sans-serif;

	font-size: 20px;
}
</style>
</head>




<body>
<center> 
<br>
<h1>Tour Reviews</h1>

<h4>Verify your Tour ID to insert your review</h4><br>
	<form action="verify" method="post">
	<label>Tourist's Name</label><br>
	 <input type="text" name="touristName" placeholder="Enter Your Name"> <br>
	<label>Tour ID</label><br><input type="text" name="tourID" placeholder="Enter Your Specific Tour ID"><br>
	
	<input type="submit" name="submit" value="Verify">
	
	</form>
	
</center>
	

</body>
</html>