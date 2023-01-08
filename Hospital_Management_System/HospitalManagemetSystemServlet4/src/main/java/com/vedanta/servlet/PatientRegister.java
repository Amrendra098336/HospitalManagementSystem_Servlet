package com.vedanta.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedanta.dao.PatientRegisteration;
import com.vedanta.db.DBConnect;
import com.vedanta.entity.Patient;



@WebServlet("/signup")
public class PatientRegister extends HttpServlet{

	public static String patientRegistrationStatus;
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("INSIDE SERVLET");
		String firstName = req.getParameter("fname");
		String lastName = req.getParameter("lname");
		String email =req.getParameter("email");
		String password= req.getParameter("password");
		
		Patient patient = new Patient(firstName, lastName, email, password);
		PatientRegisteration patientRegisteration = new PatientRegisteration(DBConnect.getDbConnection());
		HttpSession httpSession = req.getSession();
		boolean result =patientRegisteration.UserRegistration(patient);
		if(result) {
			patientRegistrationStatus = "Patient has been added Successfully";
			httpSession.setAttribute("successMessage", patientRegistrationStatus);
			resp.sendRedirect("signup.jsp");
		}else {
			patientRegistrationStatus = "Patient not added Please contact Admin";
			httpSession.setAttribute("errorMessage", patientRegistrationStatus);
			resp.sendRedirect("signup.jsp");
		}
		
		
		
	}
	
	

}
