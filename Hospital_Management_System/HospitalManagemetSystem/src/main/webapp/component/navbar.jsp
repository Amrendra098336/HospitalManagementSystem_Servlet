<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<nav class="navbar navbar-expand-lg navbar-light bg-info bg-gradient">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-sharp fa-solid fa-hospital"></i> VEDANTA</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<li class="nav-item"><i class="fa-solid fa-right-to-bracket"></i></li>
				<c:if test="${empty userObj}">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor-login.jsp"> DOCTOR</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">APPOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="patient-login.jsp">PATIENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin-login.jsp">ADMIN</a></li>
				</c:if>


				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">APPOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">VIEW APPOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"><i class="fa-solid fa-circle-user"></i></a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle nav-link active" href="#" id="navbarDropdownMenuLink"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							 ${fn:toUpperCase(userObj.firstName) } </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#">CHANGE PASSWORD</a></li>
							<li><a class="dropdown-item" href="patientLogout">LOGOUT</a></li>
						</ul></li>
				</c:if>
			</ul>
		</div>
	</div>
</nav>