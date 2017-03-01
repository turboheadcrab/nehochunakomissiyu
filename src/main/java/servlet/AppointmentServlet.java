package servlet;

import model.Appointment;
import model.Client;
import model.Doctor;
import service.AppointmentService;
import service.ClientService;
import service.DoctorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import static java.lang.Integer.valueOf;

@WebServlet(name = "appointment", urlPatterns = "/appointment")
public class AppointmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/appointment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer doctorId = Integer.valueOf(request.getParameter("doctor"));
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String time = request.getParameter("time");
        Integer id = (Integer) request.getSession().getAttribute("id");

        DoctorService doctorService = new DoctorService();
        Doctor doctor = doctorService.findById(doctorId);
        ClientService clientService = new ClientService();
        Client client = clientService.findById(id);
        if (day != null && time != null && month != null) {
            LocalDateTime fromLocalDateTime = LocalDateTime.of(2017, valueOf(month), valueOf(day), valueOf(time), 0);
            LocalDateTime toLocalDateTime = LocalDateTime.of(2017, valueOf(month), valueOf(day), valueOf(time) + 1, 0);
            AppointmentService appointmentService = new AppointmentService();
            List<Appointment> appointments = appointmentService.findAll();
            for (Appointment appointment :
                    appointments) {
                if (appointment.getFromDateTime().isEqual(fromLocalDateTime)) {
                    request.setAttribute("message", "Choose other time");
                    getServletContext().getRequestDispatcher("/WEB-INF/views/appointment.jsp").forward(request, response);
                    return;
                }
            }
            Appointment appointment = new Appointment();
            appointment.setClient(client);
            appointment.setDoctor(doctor);
            appointment.setRoomNumber(213);
            appointment.setFromDateTime(fromLocalDateTime);
            appointment.setToDateTime(toLocalDateTime);
            appointmentService.persist(appointment);

            response.sendRedirect("/home");
        } else {
            request.setAttribute("message", "Please, fill all the fields");
            getServletContext().getRequestDispatcher("/WEB-INF/views/appointment.jsp").forward(request, response);
        }
    }
}
