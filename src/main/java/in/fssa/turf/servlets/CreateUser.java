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
import in.fssa.turf.model.User;
import in.fssa.turf.service.UserService;

@WebServlet("/user/create")
public class CreateUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserService userService = new UserService();
        PrintWriter out = response.getWriter();
        System.out.println("working");
        User user = new User();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String area = request.getParameter("area");
        String city = request.getParameter("city");

        user.setEmailId(email);
        user.setPassword(password);
        user.setFirstName(firstname);
        user.setLastName(lastname);
        user.setAddress(address);
        user.setArea(area);
        user.setCity(city);
        
        System.out.println(user); 
        

        try {
            userService.create(user);
            response.sendRedirect(request.getContextPath() + "/login");

        } catch (ValidationException e) {
            e.printStackTrace();
            out.println("Validation Error: " + e.getMessage());
        }
    }
}
