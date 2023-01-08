package com.vedanta.servlet;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.vedanta.entity.Patient;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  {
		try {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession httpSession = request.getSession();
		if(email.equalsIgnoreCase("admin@admin.com") && password.equals("password")) {
			
				httpSession.setAttribute("adminObj", new Patient());
				response.sendRedirect("admin/index.jsp");
		}else {
			httpSession.setAttribute("errorMessage", "Please Check Credentials");
			response.sendRedirect("admin-login.jsp");
		}
	}
		catch (IOException e) {
			e.printStackTrace();
		}
	}

}
