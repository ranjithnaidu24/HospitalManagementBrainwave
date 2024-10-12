package com.controller;

import java.io.IOException;

import com.dao.DAOClass;
import com.dao.DAOInterface;
import com.model.DoctorRegistrationModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registerdoctor")
public class RegisterDoctorThroughAdminHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve parameters from the request
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String mobilenumber = request.getParameter("mobilenumber");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// Print the retrieved parameters to verify
		System.out.println("Received parameters from front end into servlet");

		// Create a new model object and set its properties
		DoctorRegistrationModel dr = new DoctorRegistrationModel();
		dr.setFirstname(firstname);
		dr.setLastname(lastname);
		dr.setMobilenumber(mobilenumber);
		dr.setEmail(email);
		dr.setUsername(username);
		dr.setPassword(password);

		// Print model object to verify if it's properly set
		System.out.println("Model data set in servlet" + dr);

		// DAO operation to insert patient data
		DAOInterface d = new DAOClass();
		String status = d.insertDoctor(dr);

		// Check the status of insertion and decide next action
		System.out.println("Insert operation status: " + status);

		// Handle response based on insertion status
		if (status.equals("success")) {
			System.out.println("Registration successful, redirecting to admin home page.");
			RequestDispatcher rd = request.getRequestDispatcher("/adminhome.jsp");
			rd.include(request, response);
		} else {
			System.out.println("Registration failed, redirecting back to admin home page.");
			RequestDispatcher rd = request.getRequestDispatcher("/adminhome.jsp");
			rd.include(request, response);
		}
	}
}
