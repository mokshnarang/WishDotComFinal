<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link href="<c:url value="/resources/static/css/styles.css"/>"
	rel="stylesheet" />

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
<link href="<c:url value="/resources/static/css/updateProduct.css"/>" rel="stylesheet" >
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="index">Start
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
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#">Product</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Services</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="tempdata">Contact</a></li>
					
			<li class="nav-item d-none d-sm-inline-block"><a
				href="./admin" class="nav-link">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
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
</head>
</body>
<body background="<c:url value='/resources/static/images/listBg.jpg'/>">
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

  <section class="content">
      <div class="container-fluid">
<div class = "updateProduct">
<div align="center">
        <h1>Update Product</h1>
 
        <form:form id="registrationform" action="updateProductsave" method="post" enctype="multipart/form-data" modelAttribute="product">
<div class="form-group">
<input type="text"  name="productId" value=${product.productId} readonly="readonly">
</div>
<div class="form-group">
<p class="contact"><label for="productName">Product Name</label></p>
<input type="text" name="productName"  value=${product.productName} >
</div>
<div class="form-group">
 <p class="contact"><label for="productBrand">Product Brand</label></p>
<input type="text" name="productBrand"  value=${product.productBrand} >
</div>
<div class="form-group">
<p class="contact"><label for="productPrice">Product Price</label></p>
<input type="text" name="productPrice" value=${product.productPrice}>
</div>
<div class="form-group">
<p class="contact"><label for="productDescription">Product Description</label></p>
<input type="text" name="productDescription" value=${product.productDescription}/>
</div>
<div class="form-group">
<p class="contact"><label for="productCategory">Product Category</label></p>
<form:select class="select-style city" path="productCategory" name="productCategory" tabindex="5">

            <option value="select">Select Category</option>
            <option value="Tv">TV</option>
            <option value="Camera">Camera</option>
            <option value="Mobile">Mobile</option>
             <option value="Laptop">Laptop</option>
              <option value="Refrigerator">Refrigerator</option>
              <option value="MicroOven">MicroOven</option>
            </form:select><br><br> 
</div>

 <p class="contact"><label for="fileLocation">Product Image</label></p>
<form:input type="file" path="fileLocation" name="imageFile" tabindex="6" />

<input  class="button" name="submit" id="submit" tabindex="7" value="Validate Product!" type="submit" onsubmit="myFunction()">

</form:form>
    </div>
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
    
<script src="<c:url value="/resources/static/js/updateProduct" />"></script>
 
</body>
</html>