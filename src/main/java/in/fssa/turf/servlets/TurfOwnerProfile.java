package in.fssa.turf.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.turf.model.TurfOwner;
import in.fssa.turf.service.TurfOwnerService;

@WebServlet("/turfownerprofile")
public class TurfOwnerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int turfOwnerId;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			HttpSession session = request.getSession();
			
			int userId = (int) session.getAttribute("logged turfowner id");
			
			TurfOwner turfowner = TurfOwnerService.getById(turfOwnerId);
			
			request.setAttribute("turfOwnerDetails", turfowner);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/turfOwnerProfile.jsp");
			dispatcher.forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}