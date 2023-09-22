<%@page import="java.util.List"%>
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
            <br>
            <a href="<%=request.getContextPath()%>/turf_detail?id=<%=turf.getId()%>"><button>View Turf</button></a>
        </div>
        
        <%
        }
        }
        %>
            </div>
</section>

</body>
</html>
