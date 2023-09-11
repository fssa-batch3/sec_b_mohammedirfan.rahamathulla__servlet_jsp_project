package in.fssa.turf.servlets;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.model.Turf;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.exception.PersistenceException;
import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/turf/edit")
public class EditTurfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		RequestDispatcher rd = request.getRequestDispatcher("/edit_user.jsp");
//		
//		rd.forward(request, response);

		int turfId = Integer.parseInt(request.getParameter("id"));

		
		try {
			TurfService turfService = new TurfService();
			TurfEntity turf = new TurfEntity();
			turf = TurfService.findByTurfId(turfId);
			
			request.setAttribute("editTurf", turf);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/edit_turf.jsp");
			dispatcher.forward(request, response);

		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (PersistenceException e) {
			e.printStackTrace();
		}

	}
}
