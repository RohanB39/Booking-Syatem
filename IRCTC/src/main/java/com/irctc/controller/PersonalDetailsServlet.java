package com.irctc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.irctc.DAO.UserDAO;
import com.irctc.model.User;
import java.sql.SQLException;

@WebServlet("/personalDetails")
public class PersonalDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("basicDetails.jsp");
            return;
        }

        user.setfName(request.getParameter("fname"));
        user.setmName(request.getParameter("mname"));
        user.setlName(request.getParameter("lname"));
        user.setOccupation(request.getParameter("occupation"));
        user.setDateOfBirth(request.getParameter("dateofbirth"));
        user.setMaritalStatus(request.getParameter("marital_status"));
        user.setGender(request.getParameter("gender"));
        user.setEmail(request.getParameter("email"));
        user.setIsd(Integer.parseInt(request.getParameter("isd")));
        user.setMobile(Long.parseLong(request.getParameter("mobile")));
        user.setNationality(request.getParameter("nationality"));

        UserDAO userDAO = new UserDAO();
        
        try {
            userDAO.savePersonalDetails(user);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error while inserting personal details", e);
        }

        response.sendRedirect("address.jsp");
    }
}
