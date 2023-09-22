package in.fssa.turf.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.model.User;
import in.fssa.turf.model.User;
import in.fssa.turf.service.UserService;

@WebServlet("/users")

public class ListUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		UserService userService = new UserService();
		
		Set<User> userList = new HashSet<User>();
		
			userList = userService.getAll();
			request.setAttribute("userList", userList);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/user_list.jsp");
			dispatcher.forward(request, response);

	}

}