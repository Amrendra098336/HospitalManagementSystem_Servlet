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

	<div class="container p-5">
		<h3 class="text-center fs-3">Admin Dashboard</h3>
		<div class="row">
			<div class="col-md-4">
				<div class="card point-card">
					<div class="card-body text-center text-info">
						<i class="fas fa-user-md fa-3x"></i><br>
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
				<div class="card point-card">
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

</body>
</html>