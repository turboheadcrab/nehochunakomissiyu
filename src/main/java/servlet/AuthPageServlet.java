package servlet;

import model.Client;
import org.apache.log4j.Logger;
import service.ClientService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "auth", urlPatterns = "/auth")
public class AuthPageServlet extends HttpServlet {

    private final static Logger LOGGER = Logger.getLogger(AuthPageServlet.class);

    private Client client;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer id = (Integer) request.getSession().getAttribute("id");
        if (id != null) {
            response.sendRedirect("/home");
        }
        getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Map<String, String> messages = new HashMap<>();
        ClientService clientService = new ClientService();

        if (username == null || username.isEmpty()) {
            messages.put("username", "Please, enter username");
        }

        if (password == null || password.isEmpty()) {
            messages.put("password", "Please, enter password");
        }

        if (messages.isEmpty()) {
            LOGGER.debug("Messages is empty");
            Integer clientId = clientService.findIdByUsername(username);
            if (clientId != -1) {
                LOGGER.debug("Client != -1");
                Client client = clientService.findById(clientId);
                request.getSession().setAttribute("id", client.getClientId());
                response.sendRedirect("/home?id=" + clientId);
                return;
            } else {
                LOGGER.debug("Client == null");
                messages.put("login", "Unknown login. Please, try again");
            }
        }
        request.setAttribute("messages", messages);
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
    }

    @Override
    public void init() throws ServletException {
    }
}
