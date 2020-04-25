<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">   
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Wish Store</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        	
	        <link href="<c:url value="/resources/static/css/styles.css"/>" rel="stylesheet" />
	         <link href="<c:url value="/resources/static/css/carousel.css"/>" rel="stylesheet" />
    </head>
	        			
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="./index">Start WishStore</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Product</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="tempdata">Contact</a></li>
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
                        
<div align="right"><a href="logout">Log out
<%
out.print(request.getSession().getAttribute("user"));
%>
</a></div> 
                        
                    </ul>
                </div>
            </div>
        </nav>
        
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">Welcome to Wish Store </h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5">Wish Store is an online store with all the products avaiable and sold at online .You will not let down by purchasing any item.</p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Go to products</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About section-->
        <section class="page-section bg-primary" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">We've got what you need!</h2>
                        <hr class="divider light my-4" />
                        <p class="text-white-50 mb-4">Wish Store is an online store with all the products avaiable and sold at online .You will not let down by purchasing any item.</p>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services section-->
        <section class="page-section" id="services">
            <div class="container">
                <h2 class="text-center mt-0">All kinds of products</h2>
                <hr class="divider my-4" />
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Multiple Products</h3>
                            <p class="text-muted mb-0">Our producted are updated regularly to keep customer happy!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Up to Date</h3>
                            <p class="text-muted mb-0">All Stock are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Ready to Buy</h3>
                            <p class="text-muted mb-0">You can use this product as is, or you can make try to buy!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Handle with Love</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
   <!-- Portfolio section-->
      
    <!-- Wrap the rest of the page in another container to center all the content. -->
	
    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
         <div class="col-lg-4">
          
        
	          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
	          <img class="img-circle" src="<c:url value="/resources/static/images/laptop.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Laptop</h2>
			          <p>Get latest Samsung,MI,ACER Laptop</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Laptop/1"/>" role="button">View Product List</a></p>
	        
	             </div>
	             </div>
        
        </div><!-- /.col-lg-4 -->
         
         <div class="col-lg-4">
          
        
	          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
	          <img class="img-circle" src="<c:url value="/resources/static/images/mobile.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Mobile</h2>
			          <p>Get latest Samsung,iphone,HTC mobile</p>
			          <p><a class="btn btn-success btn-lg" href="productMob" role="button">View Product List</a></p>
	        
	             </div>
	             </div>
        
        </div><!-- /.col-lg-4 -->
       
         
           <div class="col-lg-4">
          
          
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/camera.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Camera</h2>
			          <p>Get Samsung ,Canon brand top Camera</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Camera/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
          </div><!-- /.col-lg-4 -->
        
        
      </div>

    </div>
      
      
      
      
      
      
      <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          
          
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/tv.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>TV</h2>
			          <p>Get Samsung ,Sony,Google Top</p>
			          
			          <p><a class="btn btn-success btn-lg" href="productTv" role="button" >View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
          
          
        </div><!-- /.col-lg-4 -->
        
         
         <div class="col-lg-4">
          
        
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/refrigerator.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Refrigerator</h2>
			          <p>Get Top Brands Refigerator</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Refrigerator/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
        
        
        </div><!-- /.col-lg-4 -->
       
         
           <div class="col-lg-4">
          
             <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/tablet.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Tablet</h2>
			          <p>Get Top Brands Tablet</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Tablet/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
          
             </div><!-- /.col-lg-4 -->
        
        
     </div>
     </div> 
      
    <div class="container marketing">

      
      <div class="row">
        <div class="col-lg-4">
          
          
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/micro%20oven.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>MicroOven</h2>
			          <p>Get Top Brands MicroOven</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/MicroOven/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
          
        </div><!-- /.col-lg-4 -->
        
         
         <div class="col-lg-4">
          
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/dvd.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Dvd Player</h2>
			          <p>Get Top Brands DVD</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/DvdPlayer/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
        
        </div><!-- /.col-lg-4 -->
       
         
           <div class="col-lg-4">
          
          
                 <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/fan.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Fan</h2>
			          <p>Get Top Brands Fan</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Fan/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
             </div><!-- /.col-lg-4 -->
        
        
      </div>
      </div>
      
      
      
      
      
      <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          
          
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/printer.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Printer</h2>
			          <p>Get Different Top Brands Fan</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Printer/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
          
        </div><!-- /.col-lg-4 -->
        
         
         <div class="col-lg-4">
          
           <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/desktop.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Desktop</h2>
			          <p>Get Different Top Brands Desktop</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Desktop/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
        
        
        
        </div><!-- /.col-lg-4 -->
       
         
           <div class="col-lg-4">
          
          
             <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/washing%20machines.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Washing Machine</h2>
			          <p>Get Different Top Brands Washing Machine</p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Washing Machine/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
             </div><!-- /.col-lg-4 -->
        
        
      </div>
      </div>
      
      
      
      
        <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
         
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/ipad.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>iPad</h2>
			          <p>Get  latest iPad </p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/ipad/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
          
        </div><!-- /.col-lg-4 -->
        
         
         <div class="col-lg-4">
          
          <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/game%20consol.jpg"/>" alt="Generic placeholder image" width="140" height="140">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Gaming Console</h2>
			          <p>Get  Top Brand gaming console  </p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Game console/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
       
        </div><!-- /.col-lg-4 -->
       
         
           <div class="col-lg-4">
         
          
             <div class="product-single">
	                <div class=" text-center productColumn">
	                  <div class=" img-responsive productImage">
          <img class="img-circle" src="<c:url value="/resources/static/images/router.jpg"/>" alt="Generic placeholder image" width="190" height="190">
	                    
	                 </div>
	                 
	             </div>
	             
	             
	             <div class="product-desc">
	                  <h2>Router</h2>
			          <p>Get  Top Brand Router  </p>
			          <p><a class="btn btn-success btn-lg" href="<c:url  value="/product/productList/Router/1"/>" role="button">View Product List</a></p>
			          
	        
	             </div>
	             </div>
          
             </div><!-- /.col-lg-4 -->
        
        
      </div>
      </div>
      

        
        <section class="page-section" id="contact">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4" />
                        <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>+91 94924298949</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i
                        ><!-- Make sure to change the email address in BOTH the anchor text and the link target below!--><a class="d-block" href="wish@gmail.com">wish@gmail.com</a>
                    </div>
                </div>
            </div>
        </section>
        <%--  <form:form action="/uploadImage" enctype="multipart/form-data" method="post" modelAttribute="product" >
        <form:input type="file" path="fileLocation" name="imageFile" />
        <form:input type="hidden"  path="productId"/>
        <input type="submit" value="Upload">
        </form:form> --%>
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container"><div class="small text-center text-muted">Copyright © 2020  </div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="<c:url value ="resources/static/js/scripts.js"/>"></script>
        
       
    </body>
</html>
