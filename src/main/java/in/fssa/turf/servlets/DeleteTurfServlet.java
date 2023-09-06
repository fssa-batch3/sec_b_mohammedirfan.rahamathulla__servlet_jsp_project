package in.fssa.turf.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class DeleteTurfServlet
 */
@WebServlet("/turf/delete")
public class DeleteTurfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	TurfEntity turf = new TurfEntity();
    	try {
    	TurfService turfService = new TurfService();
    	String idParams = request.getParameter("id");
    	int id = Integer.parseInt(idParams);
    	
    	TurfService.delete(id);
    	
    	response.sendRedirect(request.getContextPath() +"/turfs");
    } catch(ValidationException e) {
    	e.printStackTrace();
    }
}
}