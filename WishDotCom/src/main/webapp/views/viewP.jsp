<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Profile</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/css/all.min.css"/>"
	rel="stylesheet" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link
	href="<c:url value="/resources/static/css/tempusdominus-bootstrap-4.min.css"/>"
	rel="stylesheet" />

<link href="<c:url value="/resources/static/css/fontawesome.min.css"/>"
	rel="stylesheet" />
<!-- iCheck -->
<link
	href="<c:url value="/resources/static/css/icheck-bootstrap.min.css"/>"
	rel="stylesheet" />

<!-- Theme style -->
<link href="<c:url value="/resources/static/css/adminlte.min.css"/>"
	rel="stylesheet" />
<!-- overlayScrollbars -->
<link
	href="<c:url value="/resources/static/css/OverlayScrollbars.min.css"/>"
	rel="stylesheet" />

<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<link href="<c:url value="/resources/static/style/style1.css" />"
	rel="stylesheet">
</head>
<body  class="hold-transition sidebar-mini layout-fixed"  background="<c:url value='/resources/static/images/bgimg.jpg'/>">
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top " id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="index">
				WishStore</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto my-2 my-lg-0">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="/loginCustomer">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#">Product</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="tempdata">Contact</a></li>
					<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          My Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="viewDetails">View Profile</a>
          <a class="dropdown-item" href="update">Update Profile</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="customerDashboard">View Dashboard</a>
        </div>
      </li>

					<li class="nav-item" >
						<a text-align="right" href="logout">Log out <%
out.print(request.getSession().getAttribute("user"));
%></a>
					</li>

				</ul>
			</div>
		</div>
	</nav>


	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4" style
		background-color="#f4f6f9">
		<!-- Brand Logo -->
		<a class="brand-link" href="loginCustomer"> <img
			class="brand-image img-circle elevation-3" style="opacity: .8"
			src="/resources/static/images/AdminLTELogo.png" alt="AdminLTE Logo" />
			<span class="brand-text font-weight-light">Customer Dashboard</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="/resources/static/images/user2-160x160.jpg"
						class="img-circle elevation-2" alt="User Image" />
				</div>
				<div class="info">
					<a href="loginCustomer" class="d-block">customer</a>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item has-treeview menu-open"><a
						href="customerDashboard" class="nav-link active"> <i
							class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								Dashboard <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="viewDetails"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>View Profile</p>
							</a></li>
							<li class="nav-item"><a href="orderList" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>View orders</p>
							</a></li>
						</ul></li>
			</nav>
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		
		<!-- /.content-header -->
<div class="container-wrapper">
		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
         <div class="container">
            <div class="regbox box">
                <img class="avatar" src="/resources/static/images/userProfile.png" >
                <h1>User Profile</h1>
				<form:form id="customerData" action="update" method="post" modelAttribute="customer" onsubmit="myFunction()">
                   <p>PhoneNo</p>
                   <form:input path="phoneNo" type="number" placeholder="Phone number" readonly="readonly" />
				
                   <p>User email</p>
				<form:input type="email" path="emailId" placeholder="User email" name="email" readonly="readonly"/>
				<p>First Name</p>
				<form:input type="text" path="firstName" placeholder="First name" name="fname" />
				
				<p>Last Name</p>
				<form:input type="text" path="lastName" placeholder="Last name" name="lname" />
				
                   <p>Password</p>
				<form:input type="text" path="password" placeholder="Password" name="password"  />
                   <input type="submit" value="Update!" onsubmit="myFunction()">
                 
                </form:form>
</div>
</div>
</div>
</section>
</div>
</div>


  <footer class="main-footer">
    <strong>Copyright &copy; 2020 <a href="#">WishDotCom</a>.</strong>
    All rights reserved.
   <style>
.main-footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}
</style>
  </footer>
  
 <script src="<c:url value ="resources/static/js/updateProfile.js"/>"></script>
  </body>
</html>