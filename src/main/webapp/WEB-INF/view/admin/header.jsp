<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!-- Logo -->
<a href="index.jsp" class="logo"> <!-- mini logo -->
	<div class="logo-mini">
		<!-- <span class="light-logo">
			<img src="../adminResources/images/logo-light.png" alt="logo">
		</span> --> 
		<span class="dark-logo">
			<img src="../adminResources/images/logo-dark_1.png" alt="">
		</span>
	</div> 
<!-- logo-->
	<div class="logo-lg">
		<!-- <span class="light-logo">
			<img src="../adminResources/images/logo-light-text.png" alt="logo">
		</span> -->
		<span class="dark-logo">
			<img src="../adminResources/images/logo-dark-text_1.png" alt="VAANI Admin">
		</span>
	</div>
</a>
<!-- Header Navbar -->
<nav class="navbar navbar-static-top">
	<!-- Sidebar toggle button-->
	<div>
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <i class="ti-align-left"></i>
		</a> <a id="toggle_res_search" data-toggle="collapse"
			data-target="#search_form" class="res-only-view"
			href="javascript:void(0);"><i class="mdi mdi-magnify"></i></a>
		<form id="search_form" role="search"
			class="top-nav-search pull-left collapse ml-20">
			<div class="input-group">
				<input type="text" name="example-input1-group2" class="form-control"
					placeholder="Search"> <span class="input-group-btn">
					<button type="button" class="btn  btn-default"
						data-target="#search_form" data-toggle="collapse"
						aria-label="Close" aria-expanded="true">
						<i class="mdi mdi-magnify"></i>
					</button>
				</span>
			</div>
		</form>
	</div>

	<div class="navbar-custom-menu r-side">
		<ul class="nav navbar-nav">
			<!-- User Account-->
			<li class="dropdown user user-menu"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"> <img
					src="../adminResources/images/7.jpg" class="user-image rounded-circle"
					alt="User Image">
			</a>
				<ul class="dropdown-menu animated flipInX">
					<!-- User image -->
					<li class="user-header bg-img"
						style="background-image: url(../../images/user-info.jpg)"
						data-overlay="3">
						<div class="flexbox align-self-center">
							<img src="../adminResources/images/7.jpg"
								class="float-left rounded-circle" alt="User Image">
							<h4 class="user-name align-self-center">
								<span><c:out value="${un}"></c:out></span>
							</h4>
						</div>
					</li>
					<!-- Menu Body -->
					<li class="user-body"><!-- <a class="dropdown-item"
						href="javascript:void(0)"><i class="ion ion-person"></i> My
							Profile</a> <a class="dropdown-item" href="javascript:void(0)"><i
							class="ion ion-bag"></i> My Balance</a> <a class="dropdown-item"
						href="javascript:void(0)"><i class="ion ion-email-unread"></i>
							Inbox</a>
						<div class="dropdown-divider"></div> <a class="dropdown-item"
						href="javascript:void(0)"><i class="ion ion-settings"></i>
							Account Setting</a> -->
						<div class="dropdown-divider"></div> <a class="dropdown-item"
						href="logout"><i class="ion-log-out"></i> Logout</a>
						<div class="dropdown-divider"></div>
						<div class="p-10">
							<a href="javascript:void(0)"
								class="btn btn-sm btn-rounded btn-success">View Profile</a>
						</div></li>
				</ul></li>
		</ul>
	</div>
</nav>