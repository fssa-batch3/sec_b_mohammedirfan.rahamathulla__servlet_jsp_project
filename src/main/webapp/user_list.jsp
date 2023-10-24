
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.fssa.turf.model.User"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.turf.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>UserList</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

h1 {
	color: red;
	text-align: center;
	margin-top: 20px;
}

table {
	border-collapse: collapse;
	width: 80%;
	margin: 20px auto;
	background-color: #ffffff;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 10px;
	text-align: center;
}

th {
	background-color: #f0f0f0;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #e0e0e0;
}

.view {
	background-color: green;
}

.delete {
	background-color: red;
}

.update {
	background-color: yellow;
}
</style>
</head>
<body>

	<h1>List of Users</h1>
	
	<%Set<User> userList = new HashSet<User>();
	userList = (Set<User>) request.getAttribute("userList"); 
	%>


	
	<table border="1">
		<tr>
			<th>FullName</th>
			<th>Email</th>
			<th>Password</th>
			<th>Area</th>
			<th>City</th>
			<th>View</th>
		</tr>
		<%
		for (User user1 : userList) {
		%>
		<tr>
			<td><%=user1.fullName()%></td>
			<td><%=user1.getEmailId()%></td>
			<td><%=user1.getPassword()%></td>
			<td>
				<a href="users/details?userId=<%= user1.getId()%>">
					<button class="view" type="submit">View</button>
				</a>
				
			</td>
			
		</tr>
		<%
		}
		%>
	</table>



</body>
</html>