<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="in.fssa.turf.model.TurfEntity"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Set"%>
<%@ page import="in.fssa.turf.service.TurfService"%>
<%@ page import="in.fssa.turf.model.Turf"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Turf Detail</title>  
  
    </head>

<body>
<style>
    body {
        background-color: #000;
        color: #fff;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .card-wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    .card {
        background-color: #333;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        max-width: 400px;
        width: 100%;
    }

    .card img {
        width: 100%;
        max-height: 200px;
        object-fit: cover;
        border-radius: 5px;
    }

    h2, p {
        margin: 10px 0;
    }

    button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 370px;
        margin-left:-425px;
    }

</style>
    <%
        String email = (String) request.getSession().getAttribute("logged email");
        TurfEntity turf = (TurfEntity) request.getAttribute("turf");
    %>
 <jsp:include page="header.jsp"></jsp:include>
    <section>
    <jsp:include page="header.jsp"></jsp:include>
        <div class="card-wrapper">
            <%
                if(turf != null){
            %>
                <div class="card">
                    <img src="<%=turf.getImage() %>" alt="Product 1"/>
                    <h2><%=turf.getName() %></h2>
                    <p><%=turf.getAddress() %></p>
                    <p><%=turf.getCity() %></p>
                    <p><%=turf.getOpeningHours() %></p>
                    <p><%=turf.getClosingHours() %></p>
                    <br>
                </div>
            <%
                }
            %>
            <a href="<%=request.getContextPath()%>/confirm.jsp?userEmail=<%=email%>&turfId=<%=turf.getId()%>"><button>Book Turf</button></a>
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
