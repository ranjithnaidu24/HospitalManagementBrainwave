package com.dao;

import java.util.LinkedList;

import com.model.AdminLoginModel;
import com.model.DoctorLoginModel;
import com.model.DoctorRegistrationModel;
import com.model.GetDetailsOfDoctorsModel;
import com.model.GetDoctorsFromAdminModel;
import com.model.PatientLoginModel;
import com.model.PatientRegistrationModel;

public interface DAOInterface {
	public String insertPatient(PatientRegistrationModel pr);

	public String loginPatient(PatientLoginModel pl);

	public String loginAdmin(AdminLoginModel am);

	public String insertDoctor(DoctorRegistrationModel dr);

	public String loginDoctor(DoctorLoginModel dl);

	public LinkedList getDoctors(GetDetailsOfDoctorsModel gd);

	public LinkedList getDoctorsInAdmin(GetDoctorsFromAdminModel gda);
}
