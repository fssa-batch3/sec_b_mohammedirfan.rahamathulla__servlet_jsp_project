`	<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.turf.service.TurfService"%>
<%@page import="in.fssa.turf.model.Turf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assests/css/list.css">
    <title>Product Listing Page</title>
</head>
<body>

    <%
	Set<Turf> turfSet  = (Set<Turf>)request.getAttribute("turfList");
	%>
 <jsp:include page="header.jsp"></jsp:include>
    <section>
        <div class="product-list">
        
        <%
        if(turfSet != null){
        for (Turf turf : turfSet) {
        %>
        
        <div class="product-item">
            <img src="<%=turf.getImage() %>" alt="Product 1">
            <h3><%=turf.getName() %></h3>
            <h3><%=turf.getCity() %></h3>
            <br>
            <a href="<%=request.getContextPath()%>/turf_detail?id=<%=turf.getId()%>"><button>View Turf</button></a>
        </div>
        
        <%
        }
        }
        %>
            </div>
</section>
 <footer class="footer">
    <div class="container">
        <div class="footer-content">
            <div class="footer-logo">
                <img src="logo.png" alt="Logo">
            </div>
            <div class="footer-links">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
            <div class="footer-contact">
                <p>Email: mohammedirfan@gmail.com</p>
                <p>Phone: 8939470586</p>
            </div>
        </div>
        <div class="footer-social">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2023 Your Company. All Rights Reserved.</p>
    </div>
</footer>
   
   
   <style>
   .footer {
    background-color: #333;
    color: #fff;
    padding: 40px 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.footer-logo img {
    max-width: 100%;
    height: auto;
}

.footer-links ul {
    list-style: none;
    padding: 0;
}

.footer-links li {
    margin-bottom: 10px;
}

.footer-links a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
}

.footer-contact p {
    margin-bottom: 10px;
}

.footer-social a {
    color: #fff;
    text-decoration: none;
    margin-right: 10px;
    font-size: 20px;
}

.footer-bottom {
    text-align: center;
    margin-top: 20px;
}
   
   </style>


</body>
</html>
