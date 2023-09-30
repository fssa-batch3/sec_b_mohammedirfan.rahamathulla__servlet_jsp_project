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
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

a {
	text-decoration: none;
}
</style>
<body>


	<%
	String date = (String) session.getAttribute("date");
	int id = (Integer) session.getAttribute("logged user id");
	String email = (String) request.getSession().getAttribute("logged email");
	BookingServiceImpl bookingService = new BookingServiceImpl();
	List<Booking> allBookings = bookingService.getAllBookings(id);
	%>
	<table>
		<thead>
			<tr>
				<th>S.no</th>
				<th>Email</th>
				<th>Turfid</th>
				<th>opening Hours</th>
				<th>Closing Hours</th>
				<th>Game Date</th>
				<th>Status</th>
			</tr>

		</thead>
		<tbody>
			<%
			for (Booking booking : allBookings) {
			%>
			<tr>
				<td><%=booking.getId()%></td>
				<td><%=booking.getUseremail()%></td>
				<td><%=booking.getTurfid()%></td>
				<td><%=booking.getOpeninghours()%></td>
				<td><%=booking.getClosinghours()%></td>
				<td><%=booking.getGameDate()%></td>
				<td><%=booking.getStatus()%></td>
				<td><a href="CancelBooking?id=<%=booking.getId()%>">Cancel</a></td>
			</tr>


			<%
			}
			%>


		</tbody>
	</table>



</body>
</html>