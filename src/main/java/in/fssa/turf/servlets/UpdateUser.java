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
import in.fssa.turf.model.User;
import in.fssa.turf.service.UserService;

/**
 * Servlet implementation class UpdateUser
 */
@WebServlet("/profile/update")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserService();
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email"); // Correct the variable name
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
		int id = Integer.parseInt(request.getParameter("userId"));
		
		User user = new User();
		
		 user.setEmailId(email);
	        user.setPassword(password);
	        user.setFirstName(firstname);
	        user.setLastName(lastname);
	        user.setId(id);
		try {
			userService.update(id, user);
			response.sendRedirect(request.getContextPath()+"/homepage");
		} catch (ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
		
	}

}