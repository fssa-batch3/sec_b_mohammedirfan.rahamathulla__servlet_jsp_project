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
import in.fssa.turf.model.TurfOwner;
import in.fssa.turf.service.TurfOwnerService;

/**
 * Servlet implementation class EditUser
 */
@WebServlet("/ownerprofile/edit")
public class TurfOwnerEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("turfOwnerId"));
		
		TurfOwnerService turfOwnerService = new TurfOwnerService();
		
		TurfOwner turfowner = null;
		
		turfowner = turfOwnerService.getById(id);
		
		request.setAttribute("turfOwnerDetails", turfowner);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateowner.jsp");
		dispatcher.forward(request, response);
		
		
	}



}