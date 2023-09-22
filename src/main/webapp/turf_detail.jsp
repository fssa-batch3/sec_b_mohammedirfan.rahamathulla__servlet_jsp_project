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
    <title>Turf Detail</title>   <jsp:include page="header.jsp"></jsp:include>`
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assests/css/details.css">

</head>

<body>
    <%
        TurfEntity turf = (TurfEntity) request.getAttribute("turf");
    %>

    
    <section>
        <div class="card-wrapper">
            <%
                if(turf != null){
                	System.out.print(turf.getImage());
            %>
                <div class="card">
                    <img src="<%=turf.getImage() %>" alt="Product 1"/>
                    <h2 class="product-title"><%=turf.getName() %></h2>
                    <p><%=turf.getAddress() %></p>
                    <p><%=turf.getCity() %></p>
                    <p><%=turf.getOpeningHours() %></p>
                    <p><%=turf.getClosingHours() %></p>
                    <br>
                </div>
            <%
                }
            %>
            <a href="<%=request.getContextPath()%>/confirm.jsp?userEmail=<%=request.getSession().getAttribute("userEmail")%>&turfId=<%=turf.getId()%>"><button>Book Turf</button></a>
        </div>
    </section>
</body>
</html>