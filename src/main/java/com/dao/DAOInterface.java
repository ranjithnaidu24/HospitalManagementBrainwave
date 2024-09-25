package com.dao;

import com.model.AdminLoginModel;
import com.model.DoctorRegistrationModel;
import com.model.PatientLoginModel;
import com.model.PatientRegistrationModel;

public interface DAOInterface {
	public String insertPatient(PatientRegistrationModel r);

	public String loginPatient(PatientLoginModel l);

	public String loginAdmin(AdminLoginModel am);

	public String insertDoctor(DoctorRegistrationModel dr);
}
