package servlet;

import model.Client;
import service.ClientService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registration", urlPatterns = "/registration")
public class RegistrationPageServlet extends HttpServlet {

    private final String REGISTRATION_PAGE = "/WEB-INF/views/registration.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher(REGISTRATION_PAGE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String lastName = request.getParameter("last-name");
        String firstName = request.getParameter("first-name");
        String patronymic = request.getParameter("patronymic");
        String healthInsurance = request.getParameter("health-insurance");
        String password = request.getParameter("password");
        String passwordRepeat = request.getParameter("password-repeat");

        if (username != null &&
                lastName != null &&
                firstName != null &&
                patronymic != null &&
                healthInsurance != null &&
                password != null &&
                passwordRepeat != null) {
            Client client = new Client();
            client.setUsername(username);
            client.setPassword(password);
            client.setLastName(lastName);
            client.setFirstName(firstName);
            client.setPatronymic(patronymic);
            client.setHealthInsurance(healthInsurance);

            ClientService clientService = new ClientService();
            clientService.persist(client);

            response.sendRedirect("/home");
        } else {
            request.setAttribute("message", "Please, fill all registration fields" + username + lastName +
                    firstName + patronymic + healthInsurance + password + passwordRepeat);
            getServletContext().getRequestDispatcher(REGISTRATION_PAGE).forward(request, response);
        }
    }
}
