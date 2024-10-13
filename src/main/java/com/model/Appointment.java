package com.model;

public class Appointment {
	private String fullName;
	private String email;
	private String date;
	private String time;
	private String details;

	// Constructor
	public Appointment(String fullName, String email, String date, String time, String details) {
		this.fullName = fullName;
		this.email = email;
		this.date = date;
		this.time = time;
		this.details = details;
	}

	// Getters and setters
	public String getFullName() {
		return fullName;
	}

	public String getEmail() {
		return email;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getDetails() {
		return details;
	}
}
