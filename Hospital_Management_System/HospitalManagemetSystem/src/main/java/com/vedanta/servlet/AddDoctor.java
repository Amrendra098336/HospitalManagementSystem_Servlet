package com.vedanta.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedanta.dao.DoctorDao;
import com.vedanta.db.DBConnect;
import com.vedanta.entity.Doctor;

/**
 * Servlet implementation class AddDoctor
 */
@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		boolean isDoctorInserted = false;
		String doctorRegistrationStatus;
		try {
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String email = req.getParameter("email");
			String mobileNo = req.getParameter("mobileNo");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			int experience = Integer.parseInt(req.getParameter("experience"));
			String Specialist = req.getParameter("Specialist");
			String password = req.getParameter("password");
			
			HttpSession httpSession = req.getSession();
			Doctor doctor = new Doctor(firstName, lastName, email, mobileNo, dob, qualification, experience, Specialist,
					password);
			System.out.println(firstName+lastName+ email+ mobileNo+ dob+ qualification+ experience+ Specialist+
					password);
			DoctorDao doctorDao = new DoctorDao(DBConnect.getDbConnection());
			isDoctorInserted = doctorDao.addDoctor(doctor);

			if (isDoctorInserted) {
				doctorRegistrationStatus = "Doctor has been added Successfully";
				httpSession.setAttribute("successMessage", doctorRegistrationStatus);
				resp.sendRedirect("admin/doctorinfo.jsp");
			} else {
				doctorRegistrationStatus = "Doctor not added Please contact Admin";
				httpSession.setAttribute("errorMessage", doctorRegistrationStatus);
				resp.sendRedirect("admin/doctorinfo.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
