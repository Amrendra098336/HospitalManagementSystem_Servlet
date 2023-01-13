package com.vedanta.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedanta.dao.SpecialistDao;
import com.vedanta.db.DBConnect;
import com.vedanta.entity.Specialist;

/**
 * Servlet implementation class AddSpecialistTypeServlet
 */
@WebServlet("/addSpecialistTypeServlet")
public class AddSpecialistTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			String specialistType = request.getParameter("specialistType");
			Specialist specialist = new Specialist(specialistType);
			String SpecialistTypeStatus = "";
			SpecialistDao insertSpecialistType = new SpecialistDao(DBConnect.getDbConnection());
			boolean isSpecialistTypeAdded = insertSpecialistType.addSpecialist(specialist);
			HttpSession httpSession = request.getSession();
			if (isSpecialistTypeAdded) {
				SpecialistTypeStatus = "Specialist has been added Successfully";
				httpSession.setAttribute("successMessage", SpecialistTypeStatus);

				response.sendRedirect("admin/index.jsp");

			} else {
				SpecialistTypeStatus = "Specialist already Exist. If not then please contact IT help desk.";
				httpSession.setAttribute("errorMessage", SpecialistTypeStatus);
				response.sendRedirect("admin/index.jsp");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
