package servlet;

import model.Client;
import service.ClientService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "home", urlPatterns = "/home")
public class UserHomePageServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id = (Integer) request.getSession().getAttribute("id");
        if (id != null) {
            ClientService clientService = new ClientService();
            Client client = clientService.findById(id);
            request.setAttribute("client", client);
            /*Set<Appointment> appointments = client.getAppointments();
            req.setAttribute("appointments", appointments);*/
            request.getRequestDispatcher("/WEB-INF/views/dashboard.jsp").forward(request, response);
        }

        response.sendRedirect("/auth");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    public void init() throws ServletException {
    }
}
