package com.controller;
import java.io.IOException;
// Import for potential database connectivity
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.model.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BookAppointmentServlet")
public class BookAppointmentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the form parameters
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String details = request.getParameter("details");

		// Create an Appointment object (Model)
		Appointment appointment = new Appointment(fullName, email, date, time, details);

		// Save the appointment to the database (or other storage)
		boolean isSaved = saveAppointment(appointment);

		// Redirect to success or error page based on the outcome
		if (isSaved) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("error.jsp");
		}
	}

	// Method to save the appointment to a database
	private boolean saveAppointment(Appointment appointment) {
		boolean result = false;
		Connection connection = null;
		PreparedStatement ps = null;

		try {
			// Database connection parameters
			String dbURL = "jdbc:mysql://localhost:3306/appointments";
			String dbUser = "root";
			String dbPass = "password";

			// Establish the connection to the database
			connection = DriverManager.getConnection(dbURL, dbUser, dbPass);

			// SQL query to insert the appointment data
			String query = "INSERT INTO appointments (full_name, email, date, time, details) VALUES (?, ?, ?, ?, ?)";
			ps = connection.prepareStatement(query);
			ps.setString(1, appointment.getFullName());
			ps.setString(2, appointment.getEmail());
			ps.setString(3, appointment.getDate());
			ps.setString(4, appointment.getTime());
			ps.setString(5, appointment.getDetails());

			// Execute the insert query
			int rowsInserted = ps.executeUpdate();
			if (rowsInserted > 0) {
				result = true; // Appointment successfully saved
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (connection != null)
					connection.close();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return result;
	}
}
