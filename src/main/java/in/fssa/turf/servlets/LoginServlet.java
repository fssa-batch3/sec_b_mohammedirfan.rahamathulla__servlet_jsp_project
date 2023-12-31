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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		
		System.out.println("User MailId Checking "+email);
		String password = request.getParameter("password");
		
	UserService userService = new UserService();
		
		User user;
		try {
			user = userService.getByEmail(email);
			System.out.println("User getByEmail returns "+user);
			
			HttpSession login = request.getSession();
			if(password.equals(user.getPassword())) {
				login.setAttribute("logged email", email);
				System.out.println("logged email");
				login.setAttribute("logged user", user);
				login.setAttribute("logged user id", user.getId());
				
				response.getWriter().println("User logged in successfully");
				response.sendRedirect(request.getContextPath()+"/homepage");
			}else {
				throw new RuntimeException("Incorrect password");
			}
			
			
		}catch(in.fssa.turf.exception.ValidationException e) {
			throw new RuntimeException("no user exists");
		}
		
	}

}