<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    

<%@ page language="java" import="com.niit.tlc.model.Customer"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Order</title>
<link rel="stylesheet" href="/resources/static/css/register.css">
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">WishStore</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="adminHome">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About us</a>
      </li>

       <li class="nav-item">
        <a class="nav-link" href="#">Contact us</a>
      </li>
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
      


    </ul>
   
  </div>
</nav>
<body>
<div  class="form">
<h3>Confirm Order</h3>
<form id="orderform" action="confirmOrder" method="post" modelAttribute="order" >

<%
Customer s=(Customer)request.getSession().getAttribute("userCust");
String pid=(String)request.getSession().getAttribute("prdtid");
String pname=(String)request.getSession().getAttribute("prodName");
int pprize=(Integer)request.getSession().getAttribute("prodPrice");

out.println(pid);
%>

<p class="contact"><label for="userr">User</label></p>
<input id="houseno"  name="userdetail" value="<%=s.getFirstName() %>" readonly="readonly" tabindex="1" type="text">
<input type="hidden" name="customerid"  path="customer" value="<%=s.getPhoneNo() %>" >


<p class="contact"><label for="pid">Product Id</label></p>
<input id="pid"  name="productId" value="<%=pid %>"  readonly="readonly" tabindex="2" type="text" >

<p class="contact"><label for="product">Product</label></p>
<input id="pincode"  name="pname" value="<%=pname %>" readonly="readonly" tabindex="3" type="text">

<p class="contact"><label for="pincode">Amount To Be Paid</label></p>
<input id="pincode"  name="orderamt" value="<%=pprize %>" readonly="readonly" tabindex="3" type="text">


<br>
<input class="btn btn-primary" role="button" name="submit" id="submit" tabindex="5" value="Confirm Order!" type="submit"> 
</form>
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
</body>
</html>