package in.fssa.turf.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.protobuf.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class CreateTurfServlet
 */
 @WebServlet("/add_turf")
public class CreateTurfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
       TurfEntity turf = new TurfEntity();
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String area = request.getParameter("area");
		String city = request.getParameter("city");
		String openinghours = request.getParameter("openinghours");
		String closinghours = request.getParameter("closinghours");
		
	    turf.setName(name);
		turf.setAddress(address);
		turf.setArea(area);
		turf.setCity((city));
		turf.setOpeningHours(openinghours);
		turf.setClosingHours(closinghours);
		
		TurfService turfService = new TurfService();
		try {
			turfService.create(turf);
			response.sendRedirect("turf_details");
			System.out.println("Turf is successfully created");
		} catch (ValidationException e) {
			e.printStackTrace();
			throw new RuntimeException("Invalid data");
		}	
	}
}


