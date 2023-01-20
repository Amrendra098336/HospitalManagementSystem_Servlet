<%@page import="javax.print.Doc"%>
<%@page import="com.vedanta.dao.GetSpecificDoctor"%>
<%@page import="com.vedanta.entity.Doctor"%>
<%@page import="com.vedanta.dao.GetAllDoctor"%>
<%@page import="com.vedanta.dao.DoctorDao"%>
<%@page import="com.vedanta.dao.RetriveSpecialistDao"%>
<%@page import="com.vedanta.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.vedanta.db.DBConnect"%>
<%@page import="com.vedanta.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Info</title>
<%@include file="../component/css.jsp"%>
<link rel="stylesheet" href="../component/style.css">
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
					<div class="card-body">
						<p class="fs-3 text-center text-info">EDIT DOCTOR DETAILS</p>


						<%
						int id = Integer.parseInt(request.getParameter("id"));
						GetSpecificDoctor doctor = new GetSpecificDoctor(DBConnect.getDbConnection());
						Doctor d = doctor.getDoctor(id);
						%>

						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label"> ID</label> <input type="text"
									required="required" name="doctorID" class="form-control"
									value="<%=d.getId()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label"> First Name</label> <input type="text"
									required="required" name="firstName" class="form-control"
									value="<%=d.getFirstName()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label"> Last Name</label> <input type="text"
									required="required" name="lastName" class="form-control"
									value="<%=d.getLastName()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									required="required" name="email" class="form-control"
									value="<%=d.getEmail()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile Number</label> <input
									type="number" required name="mobileNo" class="form-control"
									value="<%=d.getPhone()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"> D.O.B</label> <input type="date"
									required="required" name="dob" class="form-control"
									value="<%=d.getDob()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required="required" name="qualification"
									class="form-control" value="<%=d.getQualification()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Year Of Experience</label> <input
									type="number" required="required" name="experience"
									class="form-control" value="<%=d.getExperience()%>">
							</div>
							<div class="mb-3">
								<label class="form-label"> Specialist</label> <select
									required="required" name="Specialist" class="form-control">
									<option><%=d.getSpecialist()%></option>
									<%
									RetriveSpecialistDao dao = new RetriveSpecialistDao(DBConnect.getDbConnection());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" required="required" name="password"
									class="form-control" value="<%=d.getPassword()%>">
							</div>
							<button type="submit"
								class="btn  bg-info bg-gradient text-white col-md-12">UPDATE</button>

						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>