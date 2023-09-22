package in.fssa.turf.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.service.BookingService;
import in.fssa.turf.service.BookingServiceImpl;

/**
 * Servlet implementation class CancelBooking
 */
@WebServlet("/CancelBooking")
public class CancelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String bookingId = request.getParameter("id");
		System.out.println("CancelBooking: bookingID:" + bookingId);
		BookingService bookingService = new BookingServiceImpl();
		
		bookingService.updateBookingStatus(Integer.parseInt(bookingId),"CANCELLED");
	
	}


}
