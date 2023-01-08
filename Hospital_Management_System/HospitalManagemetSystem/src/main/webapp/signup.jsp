<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<%@include file="component/css.jsp"%>
<link rel="stylesheet" href="component/style.css">

</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point_card">
					<div class="card-body">
						<p class="fs-4 text-center">PATIENT REGISTRATION</p>
						
						<c:if test="${not empty successMessage }">
						<p class="text-center text-success fs-3">${successMessage}</p>
						<c:remove var="successMessage" scope="session"/>
						</c:if>
						
						<c:if test="${not empty errorMessage }">
						<p class="text-center text-success fs-3">${errorMessage}</p>
						<c:remove var="errorMessage" scope="session"/>
						</c:if>
						
						<form action="signup" method="post">

							<div class="mb-3">
								<label class="form-label">First Name</label> <input
									required="required" name="fname" type="text"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Last Name</label> <input
									required="required" name="lname" type="text"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									required="required" name="email" type="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									required="required" name="password" type="password"
									class="form-control">
							</div>
							<button type="submit"
								class="btn  bg-info bg-gradient text-white col-md-12">Register</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>