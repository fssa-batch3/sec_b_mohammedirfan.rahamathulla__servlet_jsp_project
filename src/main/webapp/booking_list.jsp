<%@page import="in.fssa.turf.model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.turf.service.BookingServiceImpl"%>
<%@page import="in.fssa.turf.service.BookingService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		 
		   <%
		   BookingService bookingService = new BookingServiceImpl();
		   List<Booking> allBookings = bookingService.getAllBookings();
			%>
			<table>
			<thead>
			<tr>
			<th>S.no</th>
			<th>email</th>
			<th>turfid</th>
			<th>openinghours</th>
			<th>closinghours</th>
			<th>Status</th>
			</tr>
			
			</thead>
			<tbody>
			<%
			for (Booking booking : allBookings) {%>
			<tr>
			<td><%=booking.getId() %></td>
			<td><%=booking.getUseremail() %></td>
			<td><%=booking.getTurfid() %></td>
			<td><%=booking.getOpeninghours() %></td>
			<td><%=booking.getClosinghours() %></td>
			<td><%=booking.getStatus() %></td>
			<td><a href="CancelBooking?id=<%=booking.getId()%>">Cancel</a></td>
			</tr>
				
				 
			<% }%>
			
	
			</tbody>
			</table>
		       
			
			
</body>
</html>