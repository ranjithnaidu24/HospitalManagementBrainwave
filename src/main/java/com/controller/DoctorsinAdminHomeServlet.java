package com.controller;

import java.io.IOException;
import java.util.LinkedList;

import com.dao.DAOClass;
import com.model.GetDoctorsFromAdminModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/doctorsdetailsinadminhome")
public class DoctorsinAdminHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DAOClass d = new DAOClass();
		GetDoctorsFromAdminModel gda = new GetDoctorsFromAdminModel();

		LinkedList<GetDoctorsFromAdminModel> ll = d.getDoctorsInAdmin(gda);
		System.out.println("From DoctorsinAdminHomeServlet " + ll);

		if (ll != null) {
			HttpSession session = request.getSession();
			session.setAttribute("getDetailsofDoctors", ll);
			RequestDispatcher rd = request.getRequestDispatcher("getdoctorsinadmin.jsp");
			rd.include(request, response);
		}
	}
}