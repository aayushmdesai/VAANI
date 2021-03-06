<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- <link rel="icon" href="adminResources/images/favicon.ico"> -->

<title>VAANI Admin - Registration</title>

<!-- Bootstrap 4.0-->
<link rel="stylesheet" href="adminResources/css/bootstrap.css">

<!-- Bootstrap extend-->
<link rel="stylesheet" href="adminResources/css/bootstrap-extend.css">

<!-- theme style -->
<link rel="stylesheet" href="adminResources/css/master_style.css">

<!-- UltimatePro Admin skins -->
<link rel="stylesheet" href="adminResources/css/_all-skins.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<script type="text/javascript">
	function validatedata(){
		var pass=document.getElementById("pass")
		var pass2=document.getElementById("pass2")
		var chkbox=document.getElementById("basic_checkbox_1")
		var subbtn=document.getElementById("subbtn")
		var matchpass=document.getElementById("passmatch")
		if(pass.value==pass2.value && chkbox.checked)
			{
				matchpass.style.display="none"
				subbtn.disabled=false
			}
		else if(pass.value==pass2.value && !chkbox.checked)
			{
				matchpass.style.display="none"
				subbtn.disabled=true
			}
		else
			{
				matchpass.style.display=""
				subbtn.disabled=true
			}
	}
	function checkusername(){
		var username=document.getElementById("email")
		var msg=document.getElementById("checkusername")
		var htp=new XMLHttpRequest();
		htp.onreadystatechange=function()
		{
			if(htp.readyState==4)
			{
				var x=htp.responseText
				var check=x.trim()
				if(check=="false")
					{
						msg.style.display=""
						username.value=""
						username.focus()
					}
				else
					{
						msg.style.display="none"
					}
			}
		}
		htp.open("POST","checkUser.html?username="+username.value,true)
		htp.send();
	}
	</script>

</head>
<body class="hold-transition bg-img"
	style="background-image: url(adminResources/images/bg.jpg)"
	data-overlay="3">

	<div class="auth-2-outer row align-items-center h-p100 m-0">
		<div class="auth-2">
			<div class="auth-logo font-size-30">
				<a href="../index.html" class="text-dark"><b>VAANI</b>Admin</a>
			</div>
			<!-- /.login-logo -->
			<div class="auth-body">
				<p class="auth-msg">Register a new Organisation</p>

				<form:form action="/insertData.html" method="post" class="form-element" modelAttribute="regData">
					<div class="form-group has-feedback controls">
						<form:input type="text" name="text" class="form-control"
							placeholder="Name of Organisation" required="required" data-validation-required-message="This field is required" path="organisationName"/> 
							<span class="ion ion-person form-control-feedback "></span>
					</div>
					<div class="form-group has-feedback controls">
						<form:input type="email" id="email" class="form-control" onblur="checkusername()" placeholder="Email" required="required" data-validation-required-message="This field is required" path="loginVO.username"/>
						<span class="ion ion-email form-control-feedback "></span>
						<span style="display:none; color:red" id="checkusername">Username Already Exist!!</span>
					</div>
					<div class="form-group has-feedback controls">
						<form:input type="password" name="password" class="form-control" id="pass" placeholder="Password" required="required" data-validation-required-message="This field is required" path="loginVO.password"/>
						<span class="ion ion-locked form-control-feedback "></span><br/>
					</div>
					<div class="form-group has-feedback controls">
						<input type="password" name="password2" class="form-control" id="pass2" onkeyup="validatedata()"
							placeholder="Retype password" required="required" data-validation-match-match="password" /> 
							<span class="ion ion-log-in form-control-feedback "></span>
							<span style="display:none; color:red" id="passmatch">Password doesn't match!!</span>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="checkbox">
								<input type="checkbox" id="basic_checkbox_1" onclick="validatedata()"> <label
									for="basic_checkbox_1">I agree to the <a href="#"
									class="text-danger"><b>Terms</b></a></label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-12 text-center">
							<button type="submit" class="btn btn-block mt-10 btn-success" id="subbtn" disabled=TRUE>SIGN
								UP</button>
						</div>
						<!-- /.col -->
					</div>
				</form:form>

				<!-- <div class="text-center text-dark">
			  <p class="mt-50">- Sign With -</p>
			  <p class="gap-items-2 mb-20">
				  <a class="btn btn-social-icon btn-outline btn-facebook" href="#"><i class="fa fa-facebook"></i></a>
				  <a class="btn btn-social-icon btn-outline btn-twitter" href="#"><i class="fa fa-twitter"></i></a>
				  <a class="btn btn-social-icon btn-outline btn-google" href="#"><i class="fa fa-google-plus"></i></a>
				  <a class="btn btn-social-icon btn-outline btn-instagram" href="#"><i class="fa fa-instagram"></i></a>
				</p>	
			</div>
 -->
				<!-- /.social-auth-links -->

				<div class="margin-top-30 text-center">
					<p>
						Already have an account? <a href="login.html"
							class="text-info m-l-5">Sign In</a>
					</p>
				</div>

			</div>
		</div>

	</div>


	<!-- jQuery 3 -->
	<script src="adminResources/js/jquery-3.3.1.js"></script>

	<!-- popper -->
	<script src="adminResources/js/popper.min.js"></script>

	<!-- Bootstrap 4.0-->
	<script src="adminResources/js/bootstrap.js"></script>
	
	<!-- Form validator JavaScript -->
    <script src="adminResources/js/validation.js"></script>
    <script src="adminResources/js/form-validation.js"></script>

</body>
</html>