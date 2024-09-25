package com.model;

public class DoctorLoginModel {
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "LoginModel " + username + password;
	}

	public DoctorLoginModel() {
	}

	public DoctorLoginModel(String username, String password) {
		this.username = username;
		this.password = password;
	}
}