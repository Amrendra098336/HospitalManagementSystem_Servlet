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
<%@ page isELIgnored="false"%>s
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
			<c:if test="${not empty successMessage }">
				<div class="alert alert-success" role="alert">
					<p class="text-center text-danger fs-3">${successMessage}</p>
				</div>
				<c:remove var="successMessage" scope="session" />
			</c:if>

			<c:if test="${not empty errorMessage }">
				<div class="alert alert-danger" role="alert">
					<p class="text-center text-danger fs-3">${errorMessage}</p>
				</div>

				<c:remove var="errorMessage" scope="session" />
			</c:if>
			<div class="col-md-4">
				<div class="card point-card">
					<div class="card-body">
						<p class="fs-3 text-center text-info">ADD DOCTOR</p>

						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label"> First Name</label> <input type="text"
									required="required" name="firstName" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label"> Last Name</label> <input type="text"
									required="required" name="lastName" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									required="required" name="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile Number</label> <input
									type="number" required name="mobileNo" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label"> D.O.B</label> <input type="date"
									required="required" name="dob" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required="required" name="qualification"
									class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Year Of Experience</label> <input
									type="number" required="required" name="experience"
									class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label"> Specialist</label> <select
									required="required" name="Specialist" class="form-control">
									<option>----SELECT----</option>
									<%
									RetriveSpecialistDao dao = new RetriveSpecialistDao(DBConnect.getDbConnection());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>
									<option>Demo</option>
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" required="required" name="password"
									class="form-control">
							</div>
							<button type="submit"
								class="btn  bg-info bg-gradient text-white col-md-12">Register</button>

						</form>
					</div>
				</div>
			</div>
			<div class="col-md-8">

				<div class="card point-card">
					<div class="card-body">
						<p class="fs-3 text-center text-info">DOCTOR DETAILS</p>
						<table class="table">
							<thead>
								<tr class="bg-info text-white mb-3">
									<th scope="col" class="text-center">Full Name</th>
									<th scope="col" class="text-center">Email</th>
									<th scope="col" class="text-center">Contact</th>
									<th scope="col" class="text-center">Qualification</th>
									<th scope="col" class="text-center">Experience</th>
									<th scope="col" class="text-center">Specialist</th>
									<th scope="col" class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								GetAllDoctor getAllDoctor = new GetAllDoctor(DBConnect.getDbConnection());
								List<Doctor> docList = getAllDoctor.doctorList();
								for (Doctor d : docList) {
								%>

								<tr>
									<td class="text-center"><%=d.getFirstName().concat(" ").concat(d.getLastName())%></td>
									<td class="text-center"><%=d.getEmail()%></td>
									<td class="text-center"><%=d.getPhone()%></td>
									<td class="text-center"><%=d.getQualification()%></td>
									<td class="text-center"><%=d.getExperience()%></td>
									<td class="text-center"><%=d.getSpecialist()%></td>
									<td><a href="editDoctor.jsp?id=<%=d.getId()%>"
										class="btn btn-sm btn-info">Edit </a> <a href="#"
										class="btn btn-sm btn-Danger">Delete</a></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>