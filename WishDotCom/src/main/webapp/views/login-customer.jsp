<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login |</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/style/style2.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
</head>

<body background="<c:url value='/resources/static/images/bgimg1.gif'/>">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">WishStore</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="./">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About us</a>
      </li>

       <li class="nav-item">
        <a class="nav-link" href="#">Contact us</a>
      </li>
      
             <li class="nav-item">
        <a class="nav-link" href="/register">Register</a>
      </li>

    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div class="container">
 
            <div class="regbox box">
                <img class="avatar" src="/resources/static/images/login.jpg">
                <h1>login Account</h1>
				<form action="loginCustomer" method="post">
                   <p>PhoneNo</p>
                   <input name="phoneNo" type="number" placeholder="Phone number" />
				
                   <p>Password</p>
				<input type="password" name="password" placeholder="Password" name="password"  />
                   <input type="submit" value="Login">
                   <a href="index">Forget your Password?</a>
                </form>
                
</div>
</div>
	<div style="color: red">${error}</div>

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