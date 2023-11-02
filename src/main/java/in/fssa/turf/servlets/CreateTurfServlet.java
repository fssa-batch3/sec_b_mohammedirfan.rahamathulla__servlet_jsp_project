package in.fssa.turf.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.turf.exception.ValidationException;
import in.fssa.turf.model.TurfEntity;
import in.fssa.turf.service.TurfService;

/**
 * Servlet implementation class CreateTurfServlet
 */
@WebServlet("/add_turf")
public class CreateTurfServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub

        TurfEntity turf = new TurfEntity();
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String area = request.getParameter("area");
        String city = request.getParameter("city");
        String image = request.getParameter("image");
        String openinghours = request.getParameter("openinghours");
        String closinghours = request.getParameter("closinghours");
        //int id = Integer.parseInt(request.getParameter("id")); // Parse 'id' to int


        turf.setName(name);
        turf.setAddress(address);
        turf.setArea(area);
        turf.setCity(city); // Removed unnecessary brackets
        turf.setImage(image); // Removed unnecessary brackets
        turf.setOpeningHours(openinghours);
        turf.setClosingHours(closinghours);
        turf.setTurfownerid(1); //hardcoded temporarily


        TurfService turfService = new TurfService();
        try {
            turfService.create(turf);
            response.sendRedirect("turfs");
            System.out.println("Turf is successfully created");
        } catch (ValidationException e) {
            e.printStackTrace();
            throw new RuntimeException("Invalid data");
        }
    }
}