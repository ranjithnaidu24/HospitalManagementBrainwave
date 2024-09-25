package com.controller;

import java.io.IOException;

import com.dao.DAOClass;
import com.dao.DAOInterface;
import com.model.AdminLoginModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/loginadmin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieving username and password from the request
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println(
				"Received login credentials from frontend - Username: " + username + ", Password: " + password);

		// Creating AdminLoginModel object and setting username/password
		AdminLoginModel am = new AdminLoginModel();
		am.setUsername(username);
		am.setPassword(password);

		System.out.println("AdminLoginModel object created with values: " + am.getUsername() + ", " + am.getPassword());

		// Creating DAOClass object to handle login
		DAOInterface d = new DAOClass();

		String status = d.loginAdmin(am);

		// Checking login status
		if (status.equals("failed")) {
			System.out.println("Login failed for username: " + username);
			// Redirecting to the login page if login fails
			RequestDispatcher rd = request.getRequestDispatcher("/adminlogin.html");
			rd.include(request, response);
		} else {
			System.out.println("Login successful for username: " + username);
			// Creating a session and setting attribute if login is successful
			HttpSession session = request.getSession();
			session.setAttribute("username", status);

			System.out.println("Session created, forwarding to admin home page.");
			RequestDispatcher rd = request.getRequestDispatcher("/adminhome.jsp");
			rd.include(request, response);
		}
	}

}
