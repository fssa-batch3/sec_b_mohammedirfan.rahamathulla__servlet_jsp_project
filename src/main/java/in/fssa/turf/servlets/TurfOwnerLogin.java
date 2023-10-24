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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/turfownerlogin")
public class TurfOwnerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/turfOwnerLogin.jsp");
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		
		System.out.println("TurfOwner MailId Checking "+email);
		String password = request.getParameter("password");
		
	TurfOwnerService turfOwnerService = new TurfOwnerService();
		
	TurfOwner turfowner;
		try {
			turfowner = turfOwnerService.getByEmail(email);
			System.out.println("TurfOwner getByEmail returns "+turfowner);
			
			HttpSession login = request.getSession();
			if(password.equals(turfowner.getPassword())) {
				login.setAttribute("logged email", email);
				System.out.println("logged email");
				login.setAttribute("logged turfowner", turfowner);
				login.setAttribute("logged turfowner id", turfowner.getId());
				
				response.getWriter().println("TurfOwner logged in successfully");
				response.sendRedirect(request.getContextPath()+"/turfownerhomepage");
			}else {
				throw new RuntimeException("Incorrect password");
			}
			
			
		}catch(in.fssa.turf.exception.ValidationException e) {
			throw new RuntimeException("no turfowner exists");
		}
		
	}

}