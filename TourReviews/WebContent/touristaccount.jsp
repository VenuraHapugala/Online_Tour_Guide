 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
background-image: url('images/9.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
  display: block;

}
h1 {
    color: #ffffe6;
    font-weight: 70%;
	font-family:Arial, Helvetica, sans-serif;
    margin-right:15%;
	margin-left: 15%;
	
	font-size: 55px;
	line-height: 54px;
   
}
input[type=button] {
  background-color:#008B8B;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  border-radius: 50%;
  margin:10px;
  height: 70px;
  width: 200px;
  font-size: 15px;
}

input[type=button]:hover {
  background-color: #66ffff;
}

table,tr,td{
 background-color: #DCDCDC;
  border: 1px solid black;
   padding-right: 40px;
   border-collapse: collapse;
   font-family:Arial, Helvetica, sans-serif;
	font-size: 20px;
	border-radius: 4px;
	height: 42px; 
	

}

#exit input[type=button] {
  background-color:#00008B;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin:10px;
  height: 50px;
  width: 200px;
  font-size: 15px;
}

#exit input[type=button]:hover {
  background-color: #8A2BE2;
}

</style>

</head>
<body>
<center>
<h1>My Tour Review</h1>
  <table>
	<c:forEach var="Tr" items="${touristDetails}"> 
	
	<c:set var="tID" value="${Tr.tID}"/>
	<c:set var="fullName" value="${Tr.fullName}"/>
	<c:set var="contact" value="${Tr.contact}"/>
	<c:set var="tourName" value="${Tr.tourName}"/>
	<c:set var="days" value="${Tr.days}"/>
	<c:set var="review" value="${Tr.review}"/>
	
	
	
	<tr>
	<td>Tourist ID</td>
	<td>${Tr.tID}</td>
	</tr>
	
	<tr>
	<td>Tourist Name</td>
	<td>${Tr.fullName}</td>
	</tr>
	
	<tr>
	<td>Tourist Contact</td>
	<td>${Tr.contact}</td>
	</tr>
	
	<tr>
	<td>Tour name</td>
	<td>${Tr.tourName}</td>
	</tr>
	
	<tr>
	<td>Days</td>
	<td>${Tr.days}</td>
	</tr>
	
	<tr>
	<td>Review</td>
	<td>${Tr.review}</td>
	</tr>
	
	</c:forEach>
  </table> 
  

  
   <c:url value="tourReviewInsert.jsp" var="reviewInsert">
  	<c:param name="tID" value="${tID}"/>
  	<c:param name="fullName" value="${fullName}"/>
  	<c:param name="contact" value="${contact}"/>
  	<c:param name="tourName" value="${tourName}"/>
  	<c:param name="days" value="${days}"/>
  	<c:param name="review" value="${review}"/>
  	
   </c:url>
   
  <a href="${reviewInsert}">
  <input type="button" name="Insert" value="Insert My Tour Review">
  
  
  
  
    <c:url value="updateTourReviews.jsp" var="reviewUpdate">
  	<c:param name="tID" value="${tID}"/>
  	<c:param name="fullName" value="${fullName}"/>
  	<c:param name="contact" value="${contact}"/>
  	<c:param name="tourName" value="${tourName}"/>
  	<c:param name="days" value="${days}"/>
  	<c:param name="review" value="${review}"/>
  	
   </c:url>
   
  <a href="${reviewUpdate}">
  <input type="button" name="update" value="Update My Review">
  </a>
  
  
 
  
  
  
  
  
   
  <c:url value="deleteReview.jsp" var="reviewDelete">
  	<c:param name="tID" value="${tID}"/>
  	<c:param name="fullName" value="${fullName}"/>
  	<c:param name="contact" value="${contact}"/>
  	<c:param name="tourName" value="${tourName}"/>
  	<c:param name="days" value="${days}"/>
  	<c:param name="review" value="${review}"/>
  </c:url>
  <a href="${reviewDelete}">
  <input type="button" name="delete" value="Delete My Review">
  </a>
  
  <br>
 <div id="exit">
   <a href="verification.jsp">
  <input type="button"  name="delete" value="EXIT" >
  </a>
  </div>
  
  
  
  
  
  
  
</center>  
  
</body> 
</html>