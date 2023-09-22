package in.fssa.turf.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.PersistenceException;
import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.Turf;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class GetAllTurfServlet
 */
@WebServlet("/turf_detail")
public class PersonDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request , HttpServletResponse response)
				throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			
			int id =  Integer.parseInt(request.getParameter("id"));
			
			TurfService turfService = new TurfService();
			
			TurfEntity turf = null;
			try {
				turf = (TurfEntity) turfService.findByTurfId(id);
				
				request.setAttribute("turf", turf);
				
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/turf_detail.jsp");
				dispatcher.forward(request, response);
			} catch (ValidationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ServiceException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (PersistenceException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
//			request.setAttribute("turf", turf);
//			
//			
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/turf_detail.jsp");
//			dispatcher.forward(request, response);

		}

	}
