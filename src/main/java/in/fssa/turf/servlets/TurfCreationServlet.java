package in.fssa.turf.servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;

@WebServlet("/TurfCreate")
public class TurfCreationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;       
    
    public TurfCreationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TurfService turfService = new TurfService();
		
		PrintWriter out = response.getWriter()	;
	out.println(turfService.getAll());
		
//			try {
//				
//			} catch (ValidationException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		
	   
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
