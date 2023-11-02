<%@page import="in.fssa.turf.model.User"%>
<%@page import="in.fssa.turf.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<style>
header {
    width: 100%;	
    top: 0;
    color: black;
    z-index: 10;
    position: absolute;
    background-color: gray; /* Set your desired background color */
    border-bottom: 1px solid #ccc; /* Add a border at the bottom */
    padding: 10px; /* Add some padding to the header */
}


h1 {
	font-family: 'Catamran', sans-serif;
}

h2 {
	font-family: 'Catamaran', sans-serif;
}

p {
	font-family: 'Telex', sans-serif;
}

a {
	font-family: 'Telex', sans-serif;
	font-size: 20px;
	color: white;
}

.containers div:nth-of-type(2) {
	flex: 1;
}

nav {
	font-size: 25px;
	width: 100%;
}

nav ul {
	display: flex;
	list-style: none;
	margin-left: auto;
	justify-content: flex-end;
	background-color: gray;
}

nav ul li {
	margin: 0px 30px;
	border-radius: 20px;
	border: none;
	align-items: center;
	background-color: gray;
}

nav ul li a {
	position: relative;
	text-decoration: none;
	color: white;
	font-weight: normal;
	background-color: gray;
}

nav ul li a:after {
	content: "";
	position: absolute;
	background-color: black;
	height: 2px;
	width: 0;
	left: 0px;
	bottom: -3px;
	transition: 0.3s;
}

nav ul li a:hover:after {
	width: 100%;
}

.lovi-text {
    color: white;
    font-size: 25px;
    margin-top: 6px;
    margin-left: -1055px;
    position: relative;
    background-color: gray;
}

@media only screen and (max-width:700px) {
	.logo {
		width: 70px;
	}
	nav ul li {
		margin: 0;
		margin-left: 10px;
	}
	nav {
		font-size: 15px;
	}
	nav ul li a img {
		width: 20px;
	}
}

.item {
	color: rgb(255, 255, 255);
	background-color: black;
	border-radius: 50%;
	padding: 2px;
	width: 16px;
	position: absolute;
	font-size: 18px;
	text-align: center;
	left: 10px;
	bottom: 20px;
}
</style>
</head>
<body>
	<header>
		<%
		String loggedUserEmail = (String) request.getSession().getAttribute("logged email");
		System.out.println(loggedUserEmail);
		%>
		<%
		User loggedUser = (User) request.getSession().getAttribute("logged user");
		System.out.println(loggedUser);
		%>
		<%
		if (loggedUser == null) {
		%>
		<div class="containers">
			
					
			<nav>
			
				<ul>
				 <li><span class="lovi-text">Lovi Turf</span></li>
				<li><a href="<%=request.getContextPath()%>/homepage">HOME</a></li>
					<li><a
						href="<%=request.getContextPath()%>/user/new">SIGNUP
							</a></li>
					<li><a
						href="<%=request.getContextPath()%>/login">LOG
							IN</a></li>
							
							
				</ul>
			</nav>
		</div>
		<%
		} else if ("admin123@gmail.com".equals(loggedUserEmail)) {
		%>
		
	
		<%
		} else {
		%>
		<div class="containers">
			
			<nav>
				<ul>
				 <li><span class="lovi-text">Lovi Turf</span></li>
					<li><a href="<%=request.getContextPath()%>/homepage">HOME</a></li>
					<li><a href="<%=request.getContextPath()%>/profile">PROFILE</a></li>
				</ul>
			</nav>
		</div>
		<%
		}
		%>
	</header>
</body>
</html>