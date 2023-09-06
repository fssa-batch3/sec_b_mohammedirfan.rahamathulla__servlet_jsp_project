<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.turf.service.TurfService"%>
<%@page import="in.fssa.turf.model.Turf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Turf Detail</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    table {
        border-collapse: collapse;
        width: 100%;
    }
    th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
    <%
	Set<Turf> turfSet  = (Set<Turf>)request.getAttribute("turfList");
	%>
    <h1>Turf List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Area</th>
            <th>City</th>
            <th>Opening Hours</th>
            <th>Closing Hours</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <%
        if(turfSet != null){
        for (Turf turf : turfSet) {
        
        %>
        <tr>
            <td><%= turf.getId() %></td>
            <td><%= turf.getName() %></td>
            <td><%= turf.getAddress() %></td>
            <td><%= turf.getArea() %></td>
            <td><%= turf.getCity() %></td>
            <td><%= turf.getOpeningHours() %></td>
            <td><%= turf.getClosingHours() %></td>
            <td>
            	<button><a href="turf/edit?id=<%=turf.getId() %>">Edit Turf</a></button>
            </td>
            <td>
            	<button><a href="turf/delete?id=<%=turf.getId() %>">Delete Turf</a></button>
            </td>
        </tr>
        <%
        }
        }
        
        %>
    </table>
</body>
</html>
