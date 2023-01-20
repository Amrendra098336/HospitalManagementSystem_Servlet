<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>

<%@include file="../component/css.jsp"%>
<link rel="stylesheet" href="../component/style.css">
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty adminObj}">
		<c:redirect url="../admin-login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty successMessage }">
		<p class="text-center text-success fs-3">${successMessage}</p>
		<c:remove var="successMessage" scope="session" />
	</c:if>

	<c:if test="${not empty errorMessage }">
		<p class="text-center text-danger fs-3">${errorMessage}</p>
		<c:remove var="errorMessage" scope="session" />
	</c:if>

	<div class="container p-5">
		<h3 class="text-center fs-3">Admin Dashboard</h3>
		<div class="row">
			<div class="col-md-4">
				<div class="card point-card">
				
					<div class="card-body text-center text-info">
						<a class="text-info" href="doctorinfo.jsp"><i class="fas fa-user-md fa-3x"></i><br></a>
						<p class="fs-4 text-center">
							Doctor <br>5
						</p>
					</div>
					
				</div>
			</div>

			<div class="col-md-4">
				<div class="card point-card">
					<div class="card-body text-center text-info">
						<i class="fa-solid fa-users fa-3x"></i><br>
						<p class="fs-4 text-center">
							Patient <br>5
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card point-card">
					<div class="card-body text-center text-info">
						<i class="fa-solid fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Appointments <br>5
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 mt-4">

				<div class="card point-card" data-bs-toggle="modal"
					data-bs-target="#addSpecialist">
					<div class="card-body text-center text-info">
						<i class="fa-solid fa-stethoscope fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialist <br>5
						</p>
					</div>
				</div>
			</div>
		</div>

	</div>



	<!-- Modal -->
	<div class="modal fade" id="addSpecialist" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form action="../addSpecialistTypeServlet" method="post">
						<div class="form-group">
							<label class="mb-2">Enter Specialist</label> <input type="text"
								name="specialistType" class="form-control mb-2">
						</div>
						<button type="submit"
							class="btn  bg-info bg-gradient text-white col-md-12">Add
							Specialist</button>
						<button type="submit"
							class="btn  bg-info bg-gradient text-white col-md-12 mt-2">Close</button>

					</form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>