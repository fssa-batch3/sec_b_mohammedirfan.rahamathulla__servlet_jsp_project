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

import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.model.Turf;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class GetAllTurfServlet
 */
@WebServlet("/turfs")

public class Turfdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			
			TurfService turfService = new TurfService();
			
			Set<Turf> turf = (Set<Turf>) turfService.getAll();
			
			request.setAttribute("turfList", turf);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/turf_list.jsp");
			dispatcher.forward(request, response);

		}

	}

