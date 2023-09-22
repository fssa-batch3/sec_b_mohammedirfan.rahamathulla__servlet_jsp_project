<%@page import="in.fssa.turf.model.User"%>
<%@page import="in.fssa.turf.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>


	<%
	User user = null;
	user = (User) request.getAttribute("userDetails");
	%>

	<form action="update?userId=<%=user.getId()%>" method="post">
	
	
		
		<label for="email">Email ID:</label> 
		<input type="email" value="<%=user.getEmailId()%>" name="email" readonly> 
		
		<br>
		
		<label for="password">Password:</label> 
		<input type="password" value="<%=user.getPassword()%>" name="password" readonly> 
		
		<br>
		
		<label>First Name:</label> 
		<input type="text" value="<%=user.getFirstName() %>" name="firstname" required> 
		
		<br>
		
		<label>Last Name:</label> 
		<input type="text" value="<%=user.getLastName() %>" name="lastname" required> 
		
		<br>
		
		<label>Area:</label> 
		<input type="text" value="<%=user.getArea() %>" name="area" required> 
		
		<br>
		
		<label>City:</label> 
		<input type="text" value="<%=user.getCity() %>" name="city" required> 
		
		<br>
		
		<button type="submit">Save</button>
		
	</form>

</body>
</html>