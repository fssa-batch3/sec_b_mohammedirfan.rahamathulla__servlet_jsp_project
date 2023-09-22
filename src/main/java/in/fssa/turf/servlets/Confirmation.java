package in.fssa.turf.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Confirmation
 */
@WebServlet("/book")
public class Confirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userEmail = request.getParameter("userEmail");
		System.out.println("Check"+userEmail);
		String id = request.getParameter("turfId");
		if (id == null || id.isEmpty()) {
			throw new RuntimeException("id cannot be empty");
		}

		int turfId = Integer.parseInt(id);

	}
}
