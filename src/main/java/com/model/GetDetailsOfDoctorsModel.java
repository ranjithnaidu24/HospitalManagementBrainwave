package com.model;

public class GetDetailsOfDoctorsModel {
	private String firstname;
	private String lastname;
	private String mobilenumber;
	private String email;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMobilenumber() {
		return mobilenumber;
	}

	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String toString() {
		return "from GetDetailsOfDoctorsModel " + firstname + lastname + mobilenumber + email;
	}

	public GetDetailsOfDoctorsModel() {

	}

	public GetDetailsOfDoctorsModel(String firstname, String lastname, String mobilenumber, String email) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.mobilenumber = mobilenumber;
		this.email = email;
	}
}