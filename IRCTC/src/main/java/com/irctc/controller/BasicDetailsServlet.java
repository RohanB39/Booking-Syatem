package com.irctc.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.irctc.DAO.UserDAO;
import com.irctc.model.User;

@WebServlet("/basicDetails")
public class BasicDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setLanguage(request.getParameter("language"));
		user.setSecurityQuestion(request.getParameter("securityQuestion"));
		user.setSecurityAnswer(request.getParameter("securityAnswer"));
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		UserDAO userDAO = new UserDAO();

		try {
			userDAO.saveUser(user);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new ServletException("Database error while inserting basic details", e);
		}
		response.sendRedirect("personalDetails.jsp");
	}
}