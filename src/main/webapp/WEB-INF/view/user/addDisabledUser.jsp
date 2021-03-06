<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- <link rel="icon" href="../adminResources/images/favicon.ico"> -->

<title>VAANI - Disabled User Form</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet" href="../adminResources/css/bootstrap.css">

<!-- Bootstrap extend-->
<link rel="stylesheet" href="../adminResources/css/bootstrap-extend.css">

<!-- theme style -->
<link rel="stylesheet" href="../adminResources/css/master_style.css">

<!-- UltimatePro Admin skins -->
<link rel="stylesheet" href="../adminResources/css/_all-skins.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body class="hold-transition skin-light light-sidebar sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<jsp:include page="../header.jsp" />
		</header>

		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar-->
			<section class="sidebar">
				<jsp:include page="menu.jsp" />
			</section>
		</aside>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="d-flex align-items-center">
						<div class="mr-auto">
							<h3 class="page-title">Card Details</h3>
							<div class="d-inline-block align-items-center">
								<nav>
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="/user/index"><i class="mdi mdi-home-outline"></i></a></li>
										<li class="breadcrumb-item" aria-current="page">Disability Card</li>
										<li class="breadcrumb-item active" aria-current="page">User Details</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</div>

				<!-- Main content -->
				<section class="content">

					<!-- Basic Forms -->
					<div class="box">
						<div class="box-header with-border">
							<h4 class="box-title">Enter Disability Card Details</h4>
							<!-- <h6 class="box-subtitle">Bootstrap Form Validation check the <a class="text-warning" href="#">official website </a></h6> -->
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col">
									<form:form novalidate="novalidate" action="/user/insertDisabledUser.html" modelAttribute="disabledUserData" method="POST">
										<div class="row">
											<div class="col-12">
												<div class="form-group">
													<h5>
														Name <span class="text-danger">*</span>
													</h5>
													<div class="controls">
														<form:input type="text" name="text" path="disabledUsername" class="form-control" placeholder="Name" required="required" data-validation-required-message="This field is required" />													
													</div>
												</div>
												<div class="form-group">
													<h5>
														ID <span class="text-danger">*</span>
													</h5>
													<div class="controls">
														<form:input type="text" name="text" path="disabledUserUniqueId" class="form-control" placeholder="Unique ID" required="required" data-validation-required-message="This field is required" />
													</div>
												</div>
												<div class="form-group">
													<h5>
														DOB <span class="text-danger">*</span>
													</h5>
													<div class="controls">
														<form:input type="date" name="date" path="dateOfBirth" class="form-control" placeholder="Date Of Birth" required="required" data-validation-required-message="This field is required" />
													</div>
												</div>
												<div class="form-group">
													<h5>
														Gender <span class="text-danger">*</span>
													</h5>
													
													<form:radiobutton path="gender" value="Male" name="group1" id="radio_1"/><label for="radio_1">Male</label>
													<form:radiobutton path="gender" value="Female" name="group1" id="radio_2"/><label for="radio_2">Female</label>
													<form:radiobutton path="gender" value="Other" name="group1" id="radio_3"/><label for="radio_3">Other</label>													
												</div>
												<div class="form-group">
													<h5>
														Date of Issue <span class="text-danger">*</span>
													</h5>
													<div class="controls">
														<form:input type="date" name="date" path="dateOfIssue" class="form-control" placeholder="Date Of Issue" required="required" data-validation-required-message="This field is required" />
													</div>
												</div>
												<div class="form-group">
													<h5>
														Valid Upto <span class="text-danger">*</span>
													</h5>
													<div class="controls">
														<form:input type="date" name="date" path="dateOfExpiry" class="form-control" placeholder="Date Of Expiry" required="required" data-validation-required-message="This field is required" />
													</div>
												</div>
											</div>
										</div>
										<div class="text-xs-right">
											<button type="submit" class="btn btn-info">Submit</button>
											<button type="reset" class="btn btn-info">Reset</button>
										</div>
									</form:form>

								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->

				</section>
				<!-- /.content -->
			</div>
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<jsp:include page="../footer.jsp" />
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script src="../adminResources/js/jquery-3.3.1.js"></script>

	<!-- popper -->
	<script src="../adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script src="../adminResources/js/bootstrap.js"></script>

	<!-- Slimscroll -->
	<script src="../adminResources/js/jquery.slimscroll.js"></script>

	<!-- FastClick -->
	<script src="../adminResources/js/fastclick.js"></script>

	<!-- UltimatePro Admin App -->
	<script src="../adminResources/js/template.js"></script>

	<!-- UltimatePro Admin for demo purposes -->
	<script src="../adminResources/js/demo.js"></script>

	<!-- Form validator JavaScript -->
	<script src="../adminResources/js/validation.js"></script>
	<script src="../adminResources/js/form-validation.js"></script>

</body>
</html>