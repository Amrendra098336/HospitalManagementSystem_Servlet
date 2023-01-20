package com.vedanta.servlet;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.vedanta.dao.UpdateDoctorDao;
import com.vedanta.db.DBConnect;
import com.vedanta.entity.Doctor;

/**
 * Servlet implementation class UpdateDoctor
 */
@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		boolean isDoctorUpdated = false;
		String doctorRegistrationStatus;
		try {
			int id = Integer.parseInt(req.getParameter("doctorID"));
			
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
			Doctor doctor = new Doctor(id,firstName, lastName, email, mobileNo, dob, qualification, experience, Specialist,
					password);
			System.out.println(doctor);
			 UpdateDoctorDao updateDoctorDao = new UpdateDoctorDao(DBConnect.getDbConnection());
			isDoctorUpdated = updateDoctorDao.updateDoctor(doctor);

			if (isDoctorUpdated) {
				doctorRegistrationStatus = "Doctor has been Updated Successfully";
				httpSession.setAttribute("successMessage", doctorRegistrationStatus);
				resp.sendRedirect("admin/doctorinfo.jsp");
			} else {
				doctorRegistrationStatus = "Doctor not Updated Please contact Admin";
				httpSession.setAttribute("errorMessage", doctorRegistrationStatus);
				resp.sendRedirect("admin/doctorinfo.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
