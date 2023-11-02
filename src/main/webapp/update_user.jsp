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
<style>
body {
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 50px auto;
    max-width: 400px;
    background-color: #f4f4f4;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
    color: #333;
}

.form-container {
    text-align: left;
    margin: 0 auto;
    max-width: 300px;
}

label {
    display: block;
    font-weight: bold;
    margin: 10px 0;
}

input[type="text"],
input[type="time"] {
    width: calc(100% - 22px);
    padding: 8px;
    margin: 6px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 10px;
}

button:hover {
    background-color: #45a049;
}

</style>

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
		
	
		<br>
		
		<button type="submit">Save</button>
		
	</form>

</body>
</html>