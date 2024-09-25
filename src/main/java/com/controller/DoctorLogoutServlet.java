package com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctorlogout")
public class DoctorLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Print statement to indicate that the logout servlet has been hit
		System.out.println("DoctorLogoutServlet: Processing logout request...");

		// Get the current session if it exists
		HttpSession session = request.getSession(false); // Use false to avoid creating a new session if none exists
		if (session != null) {
			// Print session ID for clarity
			System.out.println("Session ID before invalidation: " + session.getId());

			// Invalidate the session to log out the user
			session.invalidate();

			// Print statement to confirm session invalidation
			System.out.println("Session invalidated successfully.");

			// Redirect to login page
			response.sendRedirect("doctorlogin.html");
			System.out.println("Redirecting to doctor login page...");
		} else {
			// If there is no session, log that no session was found
			System.out.println("No session found to invalidate. Redirecting to doctor login page...");
			response.sendRedirect("doctorlogin.html");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Delegate POST requests to the doGet method
		doGet(request, response);
	}
}
