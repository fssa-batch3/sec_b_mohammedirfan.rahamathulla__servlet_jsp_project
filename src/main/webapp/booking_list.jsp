<%@ page import="in.fssa.turf.model.Booking" %>
<%@ page import="java.util.List" %>
<%@ page import="in.fssa.turf.service.BookingServiceImpl" %>
<%@ page import="in.fssa.turf.service.BookingService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Bookings</title>
    <style>
        /* Add some basic styling to the table */
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

/* Style the table header */
th {
    background-color: #f2f2f2;
}

/* Add some padding to the table cells */
td {
    padding: 12px;
}

/* Style the "Cancel" link */
a {
    color: #ff0000; /* Red color for the link */
    text-decoration: none;
}

    </style>
</head>
<body>
    <%
        String date = (String) session.getAttribute("date");
        String email = (String) request.getSession().getAttribute("logged email");
        BookingService bookingService = new BookingServiceImpl();
        List<Booking> allBookings = bookingService.findAllBookingByUserEmail( (String) request.getSession().getAttribute("logged email"));
    %>
    <table>
        <thead>
            <tr>
                <th>S.no</th>
                <th>Email</th>
                <th>Turfid</th>
                <th>Opening Hours</th>
                <th>Closing Hours</th>
                <th>Game Date</th>
                <th>Status</th>
                <th>Action</th>
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
