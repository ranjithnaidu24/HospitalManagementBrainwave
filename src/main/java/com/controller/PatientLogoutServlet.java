package com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logoutpatient")
public class PatientLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get the current session
		HttpSession session = request.getSession(false); // false to avoid creating a new session
		if (session != null) {
			// Print session details before invalidation
			System.out.println("Session ID before invalidation: " + session.getId());
			// Invalidate the session
			session.invalidate();
			System.out.println("Session invalidated successfully.");

			// Redirect to the login page
			response.sendRedirect("/patientlogin.html");
			System.out.println("Redirected to patientlogin.html.");
		} else {
			// Print if there was no session to invalidate
			System.out.println("No session found. User is already logged out or session has expired.");
			response.sendRedirect("/patientlogin.html"); // Redirect to login even if there was no session
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Print a message indicating doPost was called
		System.out.println("doPost method called. Redirecting to doGet.");
		doGet(request, response);
	}
}
