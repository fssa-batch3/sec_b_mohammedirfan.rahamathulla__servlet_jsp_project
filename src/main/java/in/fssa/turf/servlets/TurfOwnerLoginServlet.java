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

@WebServlet("/TurfOwnerLogin")
public class TurfOwnerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/TurfOwnerLogin.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        TurfOwnerService turfOwnerService = new TurfOwnerService();
        TurfOwner turfowner = null;

        try {
            turfowner = turfOwnerService.getByEmail(email);
        } catch (in.fssa.turf.exception.ValidationException e) {
            throw new RuntimeException("no turfowner exists");
        }

        HttpSession login = request.getSession();
        if (turfowner != null && password.equals(turfowner.getPassword())) {
            login.setAttribute("logged email", email);
            login.setAttribute("logged turfowner", turfowner);
            login.setAttribute("logged turfowner id", turfowner.getId());
            
            response.getWriter().println("TurfOwner logged in successfully");
                        
            response.sendRedirect(request.getContextPath() + "/OwnerHomePage");
        } else {
            throw new RuntimeException("Incorrect email or password");
        }
    }
}
