package dogood;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HomeServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        doPost(req, resp);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String date = req.getParameter("date");
        String city = req.getParameter("city");

        //redirect to same jsp page
        RequestDispatcher rd = req.getRequestDispatcher("/home.jsp");
        try {
            rd.forward(req, resp);
        } catch (ServletException se) {}

        //resp.sendRedirect("/home.jsp"); // use this to redirect to a different jsp after user submits form
    }
}
