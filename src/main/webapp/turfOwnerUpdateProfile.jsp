<%@page import="in.fssa.turf.model.TurfOwner"%>
<%@page import="in.fssa.turf.model.TurfOwner"%>
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
	TurfOwner turfowner = null;
	turfowner = (TurfOwner) request.getAttribute("turfOwnerDetails");
	%>

	<form action="update?turfOwnerId=<%=turfowner.getId()%>" method="post">
	
			<label> Name:</label> 
		<input type="text" value="<%=turfowner.getName() %>" name="name" required> 
       
        <br>
		
		<label for="email">Email : </label> 
		<input type="email" value="<%=turfowner.getEmail()%>" name="email" readonly> 
		
		<br>
		
		<label for="password">Password:</label> 
		<input type="password" value="<%=turfowner.getPassword()%>" name="password" readonly> 
		
		<br>
		

	
		<br>
		
		<button type="submit">Save</button>
		
	</form>

</body>
</html>