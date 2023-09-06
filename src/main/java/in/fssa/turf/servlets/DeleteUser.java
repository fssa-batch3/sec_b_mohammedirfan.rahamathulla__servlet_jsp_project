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
import in.fssa.turf.service.UserService;

/**
 * Servlet implementation class RemoveUser
 */
@WebServlet("/user/delete")
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("userId"));

		UserService userService = new UserService();
		try {
			userService.delete(id);
			response.sendRedirect(request.getContextPath()+"/users");
		} catch (ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}

	}

	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { int id =
	 * Integer.parseInt(request.getParameter("userId"));
	 * request.setAttribute("UserId", id);
	 * 
	 * RequestDispatcher dispatcher = request.getRequestDispatcher("delete");
	 * dispatcher.forward(request, response); }
	 */

}