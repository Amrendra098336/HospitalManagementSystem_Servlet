package com.vedanta.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedanta.dao.PatientLoginVerification;
import com.vedanta.db.DBConnect;
import com.vedanta.entity.Patient;

/**
 * Servlet implementation class PatientLogin
 */
@WebServlet("/patientLogin")
public class PatientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession httpSession = request.getSession();
		PatientLoginVerification loginVerification = new PatientLoginVerification(DBConnect.getDbConnection());
		Patient patientDetails=loginVerification.patientLogin(email, password);
		
		if(patientDetails != null) {
			
				httpSession.setAttribute("userObj", patientDetails);
				response.sendRedirect("index.jsp");
		}else {
			httpSession.setAttribute("errorMessage", "Please Check Credentials");
			response.sendRedirect("patient-login.jsp");
		}
	}
		catch (IOException e) {
			e.printStackTrace();
		}
	}

}
