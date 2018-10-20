package dogood;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * This class should take in date and city from form
 * Then search through database for events that match
 * Then a list of those results to events.jsp to display
 */
public class EventServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        String date = req.getParameter("date");
        String time = req.getParameter("time");
        String location = req.getParameter("location");
        String contactName = req.getParameter("contactName");
        String contactEmail = req.getParameter("contactEmail");
        String description = req.getParameter("description");

        RequestDispatcher rd = req.getRequestDispatcher("/confirmsubmission.jsp");
        try {
            rd.forward(req, resp);
        } catch (ServletException se) {}
    }
}
