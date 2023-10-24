package in.fssa.turf.servlets;
import java.io.IOException;
import in.fssa.turf.DatabaseOperations;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.ServiceException;
import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfOwner;
import in.fssa.turf.service.TurfOwnerService;

@WebServlet("/turfowner/create")
public class CreateTurfOwner extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	TurfOwnerService turfOwnerService = new TurfOwnerService();
        PrintWriter out = response.getWriter();
        System.out.println("working");
        TurfOwner turfowner = new TurfOwner();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        turfowner.setName(name);
        turfowner.setEmail(email);
        turfowner.setPassword(password);
        
        System.out.println(turfowner); 
        

        try {
        	turfOwnerService.create(turfowner);
            response.sendRedirect(request.getContextPath() + "/turfownerlogin");

        } catch (ValidationException e) {
            e.printStackTrace();
            out.println("Validation Error: " + e.getMessage());
        }
    }
}
