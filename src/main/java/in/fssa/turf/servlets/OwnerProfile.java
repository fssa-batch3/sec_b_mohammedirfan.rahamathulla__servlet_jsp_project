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

@WebServlet("/ownerprofile")
public class OwnerProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response, int turfownerId) throws ServletException, IOException {
		try {
			
			HttpSession session = request.getSession();
			
			int turfOwnerId = (int) session.getAttribute("logged user id");
			
			System.out.println(turfOwnerId);
			
			TurfOwner turfowner = TurfOwnerService.getById(turfownerId);
			
			request.setAttribute("turfOwnerDetails", turfowner);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ownerprofile.jsp");
			dispatcher.forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}