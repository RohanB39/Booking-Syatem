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

@WebServlet("/FetchUserDetailsServlet")
public class FetchUserDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("uid"));

        try {
            UserDAO userDAO = new UserDAO();
            User user = userDAO.getUserById(userId);
            Booking booking = userDAO.getLatestBookingByUserId(userId);

            // Assuming you have a method to calculate price
            double price = calculatePrice(booking);

            request.setAttribute("user", user);
            request.setAttribute("booking", booking);
            request.setAttribute("price", price);
            request.getRequestDispatcher("billing.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("message", "Error: Failed to fetch user details.");
            request.getRequestDispatcher("ticket.jsp").forward(request, response);
        }
    }

    private double calculatePrice(Booking booking) {
        // Implement your price calculation logic here
        // For example:
        double basePrice = 100.0; // Base price
        if ("First Class".equals(booking.getTravelClass())) {
            basePrice *= 1.5;
        }
        // Add other pricing rules as needed
        return basePrice;
    }
}
