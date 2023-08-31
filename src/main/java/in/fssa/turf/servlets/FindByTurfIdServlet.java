package in.fssa.turf.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.PersistenceException;
import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class FindByTurfIdServlet
 */
@WebServlet("/turf_list/details")
public class FindByTurfIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String roomId = request.getParameter("room_id");
		
		try {
			TurfEntity turf = TurfService.findByTurfId(Integer.parseInt(roomId));
			request.setAttribute("turfDetails", turf);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/get_turf_by_id.jsp");
			dispatcher.forward(request, response);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (PersistenceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ValidationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
}
}









