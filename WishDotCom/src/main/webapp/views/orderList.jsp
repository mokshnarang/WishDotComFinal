<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<%@ page language="java" import="com.niit.tlc.model.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Orders</title>

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

<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed" background-color="#d7f7a3">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
						href="./loginCustomer">Home</a></li>
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

					<li class="nav-item">
						<a href="logout">Log out <%
out.print(request.getSession().getAttribute("user"));
%></a>
					</li>

				</ul>
			</div>
		</div>
	</nav>
</head>
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


		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">


<h1>Your Orders.</h1>
<style>
#product {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#product td, #product th {
  border: 1px solid #ddd;
  padding: 8px;
}

#product tr:nth-child(even){background-color: #bee5eb;}

#product tr:hover {background-color: #ddd;}

#product th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>

    <table id="product" class="table table-info border="1" cellpadding="10">
        <thead class="table table-sm table-dark">
            <tr>
                <th scope="col">Order ID</th>
                <th scope="col">Your Product</th>
                <th scope="col">You Paid</th>
                <th scope="col">Your Delivery Address</th>
                <th scope="col">Trans. Ref. No.</th>
                <th scope="col">Delivrery Status</th>
                 <th scope="col">Action</th>
 
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${ordersList}" var="orderlist">
        
        <%
String usersess=(String)request.getSession().getAttribute("user");
%>
<% 
String k=null;
if(usersess!=null){
	k=usersess;
}
else{
	k=null;
}
%>
         <!-- construct an "update" link with customer id -->
							<c:url var="cancelOrder" value="cancelorder">
								 <c:param name="cnclOrdrId" value="${orderlist.orderId}" />
								<%--<c:param name="prodPrice" value="${product.productPrice}" />
								<c:param name="prodName" value="${product.productName}" />
								 --%>
							</c:url>

					
            <tr>
                <td scope="col">${orderlist.orderId}</td>
                 <td scope="col"><img src="/resources/static/productimages/${orderlist.product.fileLocation}"></td> 
                <td scope="col">${orderlist.orderAmt}</td>
                 <td scope="col">${orderlist.address.houseNumber},  ${orderlist.address.city}</td>
                 <td scope="col">${orderlist.payment.transactionId}</td>
                 <c:if test="${orderlist.deliveryStatus==1}">
                 <td scope="col">delivered</td>
                 </c:if>
                 <c:if test="${orderlist.deliveryStatus==0}">
                 <td scope="col">un Delivered</td>
                 
                 
                <td scope="col">
                   	<!-- display the update link --> 
									<a class="btn btn-primary" href="${cancelOrder}" role ="button" onclick="myFunction()">Cancel order </a>
								
								<p id="demo"></p>

<script>
function myFunction() {
  alert("Your Order cancelled successfully!!");
}
</script>
                </td>
                </c:if>
            </tr>
             </c:forEach>
        </tbody>
    </table>

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
  <script src="<c:url value="resources/static/js/orderList" />"></script>
</body>
</html>