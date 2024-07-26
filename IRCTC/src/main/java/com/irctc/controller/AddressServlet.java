package com.irctc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.irctc.model.User;
import com.irctc.DAO.UserDAO;

@WebServlet("/address")
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    User user = (User) session.getAttribute("user");
	    
	    if (user == null) {
	        response.sendRedirect("personalDetails.jsp");
	        return;
	    }

	    String floor = request.getParameter("floor");
	    String street = request.getParameter("street");
	    String area = request.getParameter("area");
	    String pin = request.getParameter("pin");
	    String city = request.getParameter("city");
	    String state = request.getParameter("state");
	    String postOffice = request.getParameter("post");
	    String copyResidence = request.getParameter("yes");
	    boolean informAboutCreditCard = request.getParameter("terms1") != null;

	    user.setFloor(floor);
	    user.setStreet(street);
	    user.setArea(area);
	    user.setPin(pin);
	    user.setCity(city);
	    user.setState(state);
	    user.setPostOffice(postOffice);
	    user.setCopyResidence(copyResidence);
	    user.setInformAboutCreditCard(informAboutCreditCard ? "yes" : "no");

	    try {
	        UserDAO userDao = new UserDAO();
	        userDao.saveAddressDetails(user);
	    } catch (Exception e) {
	        e.printStackTrace();
	        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while saving the address details.");
	        return;
	    }

	    response.sendRedirect("mainPage.jsp");
	}


}
