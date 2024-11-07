package com.yourcompany.user.registration.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yourcompany.user.registration.dao.UserDao;
import com.yourcompany.user.registration.model.User;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserDao userDao;

	public void init() {
		userDao = new UserDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieve form parameters
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");

		// Create a new User object and set its fields
		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setUsername(username);
		user.setPassword(password);
		user.setAddress(address);
		user.setContact(contact);

		try {
			// Register user in the database
			userDao.registerUser(user);
			// Set user object in request for displaying on the success page
			request.setAttribute("user", user);
			// Forward to user details page after successful registration
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/userdetails.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Forward the request to the signup form JSP page
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/signup_form.jsp");
		dispatcher.forward(request, response);
	}

}
