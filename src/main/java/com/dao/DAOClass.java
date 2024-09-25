package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.AdminLoginModel;
import com.model.PatientLoginModel;
import com.model.PatientRegistrationModel;

public class DAOClass implements DAOInterface {
	public String insertPatient(PatientRegistrationModel r) {
		String status = null;

		// Logging the data received from the model using getter methods
		System.out.println("DAOClass: Received Patient data:");

		String firstname = r.getFirstname();
		String lastname = r.getLastname();
		String mobilenumber = r.getMobilenumber();
		String email = r.getEmail();
		String username = r.getUsername();
		String password = r.getPassword();

		try {
			// Loading the driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establishing connection to the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectone", "root", "root");

			// Preparing SQL statement
			PreparedStatement ps = con.prepareStatement("insert into Registration values(?,?,?,?,?,?)");
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, mobilenumber);
			ps.setString(4, email);
			ps.setString(5, username);
			ps.setString(6, password);

			// Executing the statement
			int n = ps.executeUpdate();

			// Checking if data was inserted successfully
			if (n > 0) {
				System.out.println("DAOClass: Data inserted successfully.");
				status = "success";
			} else {
				System.out.println("DAOClass: Data insertion failed.");
				status = "failed";
			}

		} catch (Exception e) {
			// Printing the exception for debugging
			System.out.println("DAOClass: Exception occurred - " + e.getMessage());
			e.printStackTrace();
		}

		// Returning the status of the operation
		System.out.println("DAOClass: Returning status - " + status);
		return status;
	}

	public String loginPatient(PatientLoginModel l) {
		String status = null;

		// Retrieving username and password from the login model
		String username = l.getUsername();
		String password = l.getPassword();

		System.out.println("Attempting login for Username: " + username);

		try {
			// Step 1: Loading the MySQL JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Step 2: Establishing connection to the database
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectone", "root", "root");

			// Step 3: Preparing the SQL statement
			PreparedStatement ps = con.prepareStatement("SELECT * FROM Registration WHERE username=? AND pass_word=?");
			ps.setString(1, username);
			ps.setString(2, password);

			// Step 4: Executing the query
			ResultSet rs = ps.executeQuery();

			// Checking if the user exists in the database
			if (rs.next()) {
				System.out.println("User found in database.");
				status = rs.getString(1); // Assume the first column is the user ID or a relevant field
				System.out.println("Login successful. User ID: " + status);
			} else {
				System.out.println("Login failed. Invalid username or password.");
				status = "failed";
			}
			// Closing resources
			rs.close();
			ps.close();
			con.close();
			System.out.println("Database resources closed.");
		} catch (Exception e) {
			System.out.println("An error occurred: " + e);
			status = "failed";
		}
		return status;
	}

	public String loginAdmin(AdminLoginModel am) {
		String status = null;

		String username = am.getUsername();
		String password = am.getPassword();
		System.out.println("Received login credentials - Username: " + username + ", Password: " + password);

		try {
			// loading the Driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// connection establishing
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webprojectone", "root", "root");

			// statements
			PreparedStatement ps = con.prepareStatement("select * from Admins where username=? and pass_word=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			// Checking if a result exists
			if (rs.next()) {
				System.out.println("Login details found for admin: " + username);
				status = rs.getString(1);
			} else {
				System.out.println("Login detaills not found for admin : " + username + ". Invalid credentials.");
				status = "failed";
			}
		} catch (Exception e) {
			System.out.println("An error occurred: " + e);
		}

		System.out.println("Returning login status to AdminLoginServlet: " + status);
		return status;
	}
}
