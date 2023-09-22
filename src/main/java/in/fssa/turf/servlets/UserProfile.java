package in.fssa.turf.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.turf.model.User;
import in.fssa.turf.service.UserService;

@WebServlet("/profile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			HttpSession session = request.getSession();
			
			int userId = (int) session.getAttribute("logged user id");
			
			User user = UserService.getById(userId);
			
			request.setAttribute("userDetails", user);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/userprofile.jsp");
			dispatcher.forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}