package com.dao;

import com.model.AdminLoginModel;
import com.model.PatientLoginModel;
import com.model.PatientRegistrationModel;

public interface DAOInterface {
	public String insertPatient(PatientRegistrationModel r);

	public String loginPatient(PatientLoginModel l);

	public String loginAdmin(AdminLoginModel am);
}
