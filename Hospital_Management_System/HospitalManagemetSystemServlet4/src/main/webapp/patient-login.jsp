<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Login</title>
	<%@include file="component/css.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card point_card">
					<div class="card-body">
						<p class="fs-4 text-center">PATIENT  LOGIN</p>
						<form action="#" method="post">
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
								class="btn  bg-info bg-gradient text-white col-md-12">Login</button>
						</form>
						<br>Don't have an account? <a href="signup.jsp" class="clink text-decoration-none"> create one</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<%@include file="component/footer.jsp"%>
</body>
</html>