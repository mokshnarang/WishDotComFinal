<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Product</title>
        <!-- Font Awesome icons (free version) -->

       <link href="<c:url value="/resources/static/style/bootstrap.min.css" />"rel="stylesheet">  
<link href="<c:url value="/resources/static/css/register1.css"/>" rel="stylesheet" >
       <link href="<c:url value="/resources/static/style/bootstrap.min.css" />"rel="stylesheet">  
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
<link href="<c:url value="/resources/static/css/font-awesome.min.css"/>"
	rel="stylesheet" />

</head>
<body class="hold-transition sidebar-mini layout-fixed" >


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
<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4" style
		background="#71f571">
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
</body>
<body id ="top" />
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		

		<!-- Main content -->
		<section class="content">
			<div class="container">
<div  class="bg-img">
<h3>Add product</h3>

<form:form id="registrationform" action="saveProduct"  enctype="multipart/form-data" method="post" modelAttribute="product" onsubmit="myFunction()">

<form:input type="hidden"  path="productId"/>

<p class="contact"><label for="productName">Product Name</label></p>
<form:input id="pname" path="productName" name="productName" placeholder="Product Name" tabindex="1" type="text" />


<p class="contact"><label for="productBrand">Product Brand</label></p>
<form:input id="pbrand" path="productBrand" name="productBrand" placeholder="Product Brand" tabindex="2" type="text" />

<p class="contact"><label for="productPrice">Product Price</label></p>
<form:input id="pprice" path="productPrice" name="productPrice" placeholder="Enter Price" tabindex="3" type="text"/>

<p class="contact"><label for="productDescription">Product Description</label></p>
<form:input type="text" id="pdescription" path="productDescription" name="productDescription" tabindex="4" />

<p class="contact"><label for="productCategory">Product Category</label></p>
<form:select class="select-style city" path="productCategory" name="productCategory" tabindex="5">

            <option value="select">Select Category</option>
            <option value="Tv">Tv</option>
            <option value="Camera">Camera</option>
            <option value="Mobile">Mobile</option>
             <option value="Laptop">Laptop</option>
              <option value="Refrigerator">Refrigerator</option>
              <option value="MicroOven">MicroOven</option>
            </form:select>
<br>
<p class="contact"><label for="fileLocation">Product Image</label></p>
<form:input type="file" path="fileLocation" name="imageFile" tabindex="6" />
<br>
<input class="btn btn-primary"  role="button" name="submit" id="submit" tabindex="7" value="Validate Product!" type="submit" onsubmit="myFunction()">
							

</form:form>
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
   right:1px;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}
</style>
  </footer>

 <script src="<c:url value ="resources/static/js/productSubmit.js"/>"></script>
</body>
</html>