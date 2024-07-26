package com.irctc.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.irctc.DAO.UserDAO;
import com.irctc.model.Booking;
import com.irctc.model.User;

@WebServlet("/BookTicketServlet")
public class BookTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String travelClass = request.getParameter("class");
        String travelDate = request.getParameter("date");
        boolean disability = request.getParameter("disability") != null;
        boolean flexible = request.getParameter("flexible") != null;
        boolean availableBerth = request.getParameter("avialable") != null;
        boolean pass = request.getParameter("pass") != null;

        User user = (User) request.getSession().getAttribute("user");

        if (user == null) {
            response.sendRedirect("login.jsp"); 
            return;
        }

        try {
            UserDAO userDAO = new UserDAO();
            int bookingId = userDAO.saveBooking(user.getId(), from, to, travelClass, travelDate, disability, flexible, availableBerth, pass);

            Booking booking = userDAO.getBookingById(bookingId);
            User updatedUser = userDAO.getUserById(user.getId());

            request.setAttribute("user", updatedUser);
            request.setAttribute("booking", booking);
            request.getRequestDispatcher("billing.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: Failed to book ticket.");
            request.getRequestDispatcher("bookingConfirmation.jsp").forward(request, response);
        }
    }
}
