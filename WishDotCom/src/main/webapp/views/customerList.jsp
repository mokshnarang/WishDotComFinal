<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
   <link href="<c:url value="/resources/static/css/styles.css"/>" rel="stylesheet" />
  
  <link  href="<c:url value="/resources/static/css/all.min.css"/>" rel="stylesheet"/>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link href="<c:url value="/resources/static/css/tempusdominus-bootstrap-4.min.css"/>"rel="stylesheet"/>
  
   <link href="<c:url value="/resources/static/css/fontawesome.min.css"/>"rel="stylesheet"/>
  <!-- iCheck -->
  <link  href="<c:url value="/resources/static/css/icheck-bootstrap.min.css"/>" rel="stylesheet"/>

  <!-- Theme style -->
  <link href="<c:url value="/resources/static/css/adminlte.min.css"/>" rel="stylesheet"/>
  <!-- overlayScrollbars -->
  <link  href="<c:url value="/resources/static/css/OverlayScrollbars.min.css"/>" rel="stylesheet"/>
    <link  href="<c:url value="/resources/static/css/customerList.css"/>" rel="stylesheet"/>
  

  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">

	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="./adminHome" class="nav-link">Home</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">Contact</a></li>
		</ul>

	
		<ul class="navbar-nav ml-auto">
			<li class="nav-item d-none d-sm-inline-block"><a
				href="./admin" class="nav-link">Logout</a></li>

			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
					class="badge badge-warning navbar-badge">15</span>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i
						class="fas fa-envelope mr-2"></i> 4 new messages <span
						class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
						8 friend requests <span class="float-right text-muted text-sm">12
							hours</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
						3 new reports <span class="float-right text-muted text-sm">2
							days</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All
						Notifications</a>
				</div></li>
		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4" style
		background-color="#71f571">
		<!-- Brand Logo -->
		<a class="brand-link" href="./adminHome"> <i
			class="fas fa-angle-right"></i> <img
			class="brand-image img-circle elevation-3" style="opacity: .8"
			src="/resources/static/images/AdminLTELogo.png" alt="AdminLTE Logo" />
			<span class="brand-text font-weight-light">Admin Dashboard</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<i class="fas fa-angle-right"></i>
				<div class="image">
					<img src="/resources/static/images/user2-160x160.jpg"
						class="img-circle elevation-2" alt="User Image" />
				</div>
				<div class="info">
					<a href="./adminHome" class="d-block">Admin</a>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item has-treeview menu-open"><a
						href="./adminHome" class="nav-link active"> <i
							class="fas fa-angle-right"></i>
							<p>
								Dashboard <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="./customerList"
								class="nav-link"> <i class="fas fa-angle-right"></i>
									<p>Customer Management</p>
							</a></li>
							<li class="nav-item"><a href="uploadImagedemo"
								class="nav-link"> <i class="fas fa-angle-right"></i>
									<p>Product Management</p>
							</a></li>
							<li class="nav-item"><a href="productlistAdmin"
								class="nav-link"> <i class="fas fa-angle-right"></i>
									<p>Products List</p>
							</a></li>
						</ul></li>
			</nav>
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">

		<section class="content">
			<div class="container-fluid">
			<div class="customer">
  

    <h1><strong>Registered Customers List <strong></h1>
<style>
#customer {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customer td, #product th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customer tr:nth-child(even){background-color: #f2f2f2;}

#customer tr:hover {background-color: #ddd;}

#customer th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
    <table id="customer" border="1" cellpadding="10">
        <thead>
            <tr>
                <th>PhoneNo.</th>
                <th>Email Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

        <c:forEach var="customer" items="${listcustomer}">
        

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="delete">
								<c:param name="phoneNo" value="${customer.phoneNo}" />
							</c:url>
							
							<c:url var="activeLink" value="activateAc"> 
								<c:param name="phoneNo" value="${customer.phoneNo}" />
							</c:url>
        
            <tr>
                <td>${customer.phoneNo}</td>
                <td>${customer.emailId}</td>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <c:if test="${customer.activeStatus==0}">
                <td>
                   	<!-- display the update link --> 
									 <a class="btn btn-success" href="${activeLink}" 
									onclick="if (!(confirm('Are you sure you want to Activate this Customer?'))) return false">Activate</a>
                </td>
               </c:if>
               <c:if test="${customer.activeStatus==1}">
                    <td> <a class="btn btn-danger" href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to deActivate this Customer?'))) return false">Unactivate</a>
					</td>
               
               </c:if>
            </tr>
             </c:forEach>
        </tbody>
    </table>
</div>  

</div>
</section> 
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

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script  src="<c:url value ="resources/static/js/jquery.min.js"/>"></script>
<!-- jQuery UI 1.11.4 -->
<script  src="<c:url value ="resources/static/js/jquery-ui.min.js"/>"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<c:url value ="resources/static/js/bootstrap.bundle.min.js"/>"></script>


<!-- Tempusdominus Bootstrap 4 -->
<script src="<c:url value ="resources/static/js/tempusdominus-bootstrap-4.min.js"/>"></script>

<!-- overlayScrollbars -->
<script src="<c:url value ="resources/static/js/jquery.overlayScrollbars.min.js"/>"></script>
<!-- AdminLTE App -->
<script src="<c:url value ="resources/static/js/adminlte.js"/>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<c:url value ="resources/static/js/dashboard.js"/>"></script>

<script src="<c:url value ="resources/static/js/fontawesome.min.js"/>"></script>

	

</body>
</html>
