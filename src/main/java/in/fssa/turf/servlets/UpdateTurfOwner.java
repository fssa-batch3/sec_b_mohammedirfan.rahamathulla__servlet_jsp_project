package in.fssa.turf.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfOwner;
import in.fssa.turf.service.TurfOwnerService;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/turfownerprofile/update")
public class UpdateTurfOwner extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TurfOwnerService turfOwnerService = new TurfOwnerService();
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
        String password = request.getParameter("password");
		int id = Integer.parseInt(request.getParameter("turfOwnerId"));
		
		TurfOwner turfowner = new TurfOwner();
		turfowner.setName(name);
		turfowner.setEmail(email);
		turfowner.setPassword(password);
		
	        turfowner.setId(id);
		try {
			turfOwnerService.update(id, turfowner);
			response.sendRedirect(request.getContextPath()+"/turfownerprofile");
		} catch (ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
		
	}

}