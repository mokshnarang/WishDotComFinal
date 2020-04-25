<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    

<%@ page language="java" import="com.niit.tlc.model.Customer"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        
        <title>Checkout</title>
        <!-- Font Awesome icons (free version) -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
       <link href="<c:url value="/resources/static/style/bootstrap.min.css" />"rel="stylesheet">  
<link href="<c:url value="/resources/static/css/checkout.css"/>" rel="stylesheet" >

</head>
<body background="<c:url value='/resources/static/images/checkout.jpg'/>">
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
<div  class="form">


<h2>Checkout</h2>

<%
Customer s=(Customer)request.getSession().getAttribute("userCust");
String pid=(String)request.getSession().getAttribute("prdtid");
String pname=(String)request.getSession().getAttribute("prodName");
int pprice=(Integer)request.getSession().getAttribute("prodPrice");

//out.println(pid);
%>

 <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b></b></span></h4>
      <p><a href="#"><%=pname %></a> <span class="price">Rs.<%=pprice %></span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>Rs.<%=pprice %></b></span></p>
    </div>
  </div>
  <br></br>   

<div class="row">
  <div class="col-75">
    <div class="container">
      <form id="checkoutForm" action="confirmOrder" method="post" modelAttribute="payment" onsubmit= "myFunction()" >
      
<p class="contact"><label for="userr">User</label></p>
<input id="houseno"  name="userdetail" value="<%=s.getFirstName() %>" readonly="readonly" tabindex="1" type="text">
<input type="hidden" name="customerid"  path="customer" value="<%=s.getPhoneNo() %>" >


<p class="contact"><label for="pid">Product Id</label></p>
<input id="pid"  name="productId" value="<%=pid %>"  readonly="readonly" tabindex="2" type="text" >

<p class="contact"><label for="product">Product</label></p>
<input id="pincode"  name="pname" value="<%=pname %>" readonly="readonly" tabindex="3" type="text">

<p class="contact"><label for="pincode">Amount To Be Paid</label></p>
<input id="pincode"  name="orderamt" value="<%=pprice %>" readonly="readonly" tabindex="3" type="text">
        
<br>
          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
            <label for="ccnum">Card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
         
          <input type="submit" onsubmit= "myFunction()" value="submit"  class="btn">
 
  <input type="button" value="cancel" onCancel= "Cancel()" class="btn btn-danger">
  <script>
  function myFunction() {
  alert("Your Order placed successfully!!");
}
</script>
 
</form>

        </div>
        
        
    </div>
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
<script src="<c:url value ="resources/static/js/checkout.js"/>"></script>
</body>
</html>