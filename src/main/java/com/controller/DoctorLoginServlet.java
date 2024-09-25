package com.controller;

import java.io.IOException;

import com.dao.DAOClass;
import com.dao.DAOInterface;
import com.model.DoctorLoginModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logindoctor")
public class DoctorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the username and password from the request
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// Print the username and password to verify they were received correctly
		System.out.println(
				"DoctorLoginServlet: Received login credentials - Username: " + username + ", Password: " + password);

		// Create a new PatientLoginModel object and set the retrieved username and
		// password
		DoctorLoginModel dl = new DoctorLoginModel();
		dl.setUsername(username);
		dl.setPassword(password);

		// Call DAOClass to perform the login operation
		DAOInterface d = new DAOClass();
		String status = d.loginDoctor(dl);

		// Print the status received from DAOClass
		System.out.println("DoctorLoginServlet: Login status from DAO - " + status);

		// Check if the login attempt was successful or failed
		if (status.equals("failed")) {
			// Login failed, redirect back to the login page
			System.out.println("DoctorLoginServlet: Login failed, redirecting to login page.");
			RequestDispatcher rd = request.getRequestDispatcher("/doctorlogin.html");
			rd.include(request, response);
		} else {
			// Login successful, create a new session and store the user's first name
			System.out.println("DoctorLoginServlet: Login successful, creating session for user: " + status);
			HttpSession session = request.getSession();
			session.setAttribute("username", status);

			// Redirect the user to the patient home page
			System.out.println("DoctorLoginServlet: Redirecting to Doctor home page.");
			RequestDispatcher rd = request.getRequestDispatcher("/doctorhome.jsp");
			rd.include(request, response);
		}
	}
}
