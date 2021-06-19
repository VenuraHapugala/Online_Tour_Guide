<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="view" method="post">
	 <table>
	<c:forEach var="Rev" items="${ReviewDetails}"> 
	
	<c:set var="fullName" value="${Rev.fullName}"/>
	
	<c:set var="review" value="${Rev.review}"/>
	
	<tr>
	<td>Tourist name</td>
	<td>${Rev.fullName}</td>
	</tr>
	
	<tr>
	<td>review</td>
	<td>${Rev.review}</td>
	</tr>
	
	</c:forEach>
  </table> 
</form>

</body>
</html>