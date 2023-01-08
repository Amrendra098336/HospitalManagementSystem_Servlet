<%@page import="com.vedanta.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>
<%@include file="component/css.jsp"%>
<link rel="stylesheet" href="component/style.css">
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<%
	Connection connection = DBConnect.getDbConnection();
	out.print(connection);
	%>



	<div id="hospitalslides" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="2000">
				<img src="img/1.jpg" class="d-block w-100" style="height: 550px"
					alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/2.jpg" class="d-block w-100" style="height: 550px"
					alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/3.jpg" class="d-block w-100" style="height: 550px"
					alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="img/4.jpg" class="d-block w-100" style="height: 550px"
					alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Hospital's Key Features</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. It was popularised in the 1960s with the
									release of Letraset sheets containing Lorem Ipsum passages, and
									more recently with desktop publishing software like Aldus
									PageMaker including versions of Lorem Ipsum.</p>

							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Clean Enviornment</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. It was popularised in the 1960s with the
									release of Letraset sheets containing Lorem Ipsum passages, and
									more recently with desktop publishing software like Aldus
									PageMaker including versions of Lorem Ipsum.</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. It was popularised in the 1960s with the
									release of Letraset sheets containing Lorem Ipsum passages, and
									more recently with desktop publishing software like Aldus
									PageMaker including versions of Lorem Ipsum.</p>

							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem Ipsum is simply dummy text of the printing and
									typesetting industry. Lorem Ipsum has been the industry's
									standard dummy text ever since the 1500s, when an unknown
									printer took a galley of type and scrambled it to make a type
									specimen book. It has survived not only five centuries, but
									also the leap into electronic typesetting, remaining
									essentially unchanged. It was popularised in the 1960s with the
									release of Letraset sheets containing Lorem Ipsum passages, and
									more recently with desktop publishing software like Aldus
									PageMaker including versions of Lorem Ipsum.</p>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img class="w-100" alt="" src="img/doc.jpg">
			</div>
		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class=row>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Andrea.jpg" width="250px" height="300px">
						<p class="fw-bold fs-7">Andrea T.</p>
						<p class="fs-7">(Dermatologist)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Andrew.jpg" width="250px" height="300px">
						<p class="fw-bold fs-7">Andrew</p>
						<p class="fs-7">(General Surgery)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Jenny.jpg" width="250px" height="300px">
						<p class="fw-bold fs-7">Jenny</p>
						<p class="fs-7">(Neurosurgery)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/Mark.jpg" width="250px" height="300px">
						<p class="fw-bold fs-7">Mark</p>
						<p class="fs-7">(Orthopedic)</p>
					</div>
				</div>
			</div>

		</div>


	</div>

	<%@include file="component/footer.jsp"%>

</body>
</html>