package in.fssa.turf.servlets;

import java.io.IOException;
import in.fssa.turf.DatabaseOperations;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.Booking;
import in.fssa.turf.model.User;
import in.fssa.turf.service.BookingService;
import in.fssa.turf.service.BookingServiceImpl;
import in.fssa.turf.service.UserService;

@WebServlet("/booking/create")
public class AddBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BookingServiceImpl bookingService = new BookingServiceImpl();
		Booking booking = new Booking();
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String turfid = request.getParameter("turfId");
		String openinghours = request.getParameter("fromTime");
		String closinghours = request.getParameter("toTime");
		String gamedate = request.getParameter("gamedate");
		String status = request.getParameter("Status");
		System.out.println(gamedate);

		booking.setUseremail(email);
		booking.setTurfid(Integer.parseInt(turfid));
		booking.setOpeninghours(openinghours);
		booking.setClosinghours(closinghours);
		booking.setGameDate(gamedate);

		booking.setStatus("BOOKED");

		System.out.println(booking);
		try {
			bookingService.saveBooking(booking);
			response.sendRedirect(request.getContextPath() + "/booking_list.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			out.println("Validation Error: " + e.getMessage());
		}
	}
}
