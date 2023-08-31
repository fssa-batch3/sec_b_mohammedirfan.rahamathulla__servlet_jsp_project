package in.fssa.turf.servlets;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.model.Turf;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;
import in.fssa.turf.exception.ValidationException;
/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/turf/update")
public class UpdateTurfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Turf turf = new Turf();
		
		try {
	
		turf.setName(request.getParameter("name"));	
		turf.setAddress(request.getParameter("address"));
		turf.setArea(request.getParameter("area"));
		turf.setCity(request.getParameter("city"));
		turf.setOpeningHours(request.getParameter("openinghours"));
		turf.setClosingHours(request.getParameter("closinghours"));
		
		
		TurfService turfService = new TurfService();
		
		String idParams = request.getParameter("id");
		
		int id = Integer.parseInt(idParams);
		
		turfService.update(id, turf);
		
		response.sendRedirect(request.getContextPath()+"/turfs");
		
		} catch (ValidationException e) {
			e.printStackTrace();
		}
		
	}
}












