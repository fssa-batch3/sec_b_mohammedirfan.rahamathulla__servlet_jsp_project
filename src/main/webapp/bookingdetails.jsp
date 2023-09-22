
<%@page import="in.fssa.turf.model.Booking"%>
<%@page import="in.fssa.turf.dao.BookingDAO"%>
<%@page import="in.fssa.turf.dao.BookingDAOImpl"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
BookingDAO bookingDao = new BookingDAOImpl();
List<Booking> bookings = bookingDao.findAll();
%>

<% for (Booking booking : bookings) { %>
    <div>
        ID: <%= booking.getId() %><br>
        User Email: <%= booking.getUseremail() %><br>
        Turf ID: <%= booking.getTurfid() %><br>
        Opening Hours: <%= booking.getOpeninghours() %><br>
        Closing Hours: <%= booking.getClosinghours() %><br>
        Status: <%= booking.getStatus() %><br>
        Created At: <%= booking.getCreated_at() %><br>
        Modified At: <%= booking.getModified_at() %><br>
    </div>
<% } %>
