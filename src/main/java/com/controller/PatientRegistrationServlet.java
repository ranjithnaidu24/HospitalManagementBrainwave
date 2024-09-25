package com.controller;

import java.io.IOException;

import com.dao.DAOClass;
import com.dao.DAOInterface;
import com.model.PatientRegistrationModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registerpatient")
public class PatientRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve parameters from the request
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String mobilenumber = request.getParameter("mobilenumber");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// Print the retrieved parameters to verify
		System.out.println("Received parameters from front end into servlet");

		// Create a new model object and set its properties
		PatientRegistrationModel r = new PatientRegistrationModel();
		r.setFirstname(firstname);
		r.setLastname(lastname);
		r.setMobilenumber(mobilenumber);
		r.setEmail(email);
		r.setUsername(username);
		r.setPassword(password);

		// Print model object to verify if it's properly set
		System.out.println("Model data set in servlet" + r);

		// DAO operation to insert patient data
		DAOInterface d = new DAOClass();
		String status = d.insertPatient(r);

		// Check the status of insertion and decide next action
		System.out.println("Insert operation status: " + status);

		// Handle response based on insertion status
		if (status.equals("success")) {
			System.out.println("Registration successful, redirecting to login page.");
			RequestDispatcher rd = request.getRequestDispatcher("/patientlogin.html");
			rd.include(request, response);
		} else {
			System.out.println("Registration failed, redirecting back to register page.");
			RequestDispatcher rd = request.getRequestDispatcher("/patientregister.html");
			rd.include(request, response);
		}
	}
}
