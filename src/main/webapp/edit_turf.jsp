<%@page import="in.fssa.turf.model.TurfEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Turf Details</title>
   
</head>
<body>
    <%
    TurfEntity turf = (TurfEntity) request.getAttribute("editTurf");
    %>

    <h1>Edit Turf Details</h1>
    <div class="form-container">
        <form action="update?id=<%=turf.getId() %>" method="POST">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="<%=turf.getName() %>" required>
            
            <label for="address">Address</label>
            <input type="text" id="address" name="address" value="<%=turf.getAddress() %>" required>
            
            <label for="area">Area</label>
            <input type="text" id="area" name="area" value="<%=turf.getArea() %>" required>
            
            <label for="city">City</label>
            <input type="text" id="city" name="city" value="<%=turf.getCity() %>" required>
          
            <label for="openinghours">Opening Hours</label>
            <input type="time" id="openinghours" name="openinghours" value="<%=turf.getOpeningHours() %>" required>

            <label for="closinghours">Closing Hours</label>
            <input type="time" id="closinghours" name="closinghours" value="<%=turf.getClosingHours() %>" required>
            
            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
