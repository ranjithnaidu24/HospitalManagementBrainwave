package com.model;

public class GetDoctorsFromAdminModel {
	private int doctorId;
	private String firstname;
	private String lastname;
	private String mobilenumber;
	private String email;
	private String username;
	private String password;

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getFirstname() {
		return firstname;
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

	public GetDoctorsFromAdminModel() {

	}

	public GetDoctorsFromAdminModel(int doctorId, String firstname, String lastname, String mobilenumber, String email,
			String username, String password) {
		this.doctorId = doctorId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.mobilenumber = mobilenumber;
		this.email = email;
		this.username = username;
		this.password = password;
	}

	@Override
	public String toString() {
		return "from GetDoctorsFromAdminModel toString() " + doctorId + firstname + lastname + mobilenumber + email
				+ username + password;
	}
}