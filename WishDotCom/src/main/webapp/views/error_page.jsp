<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="container-wrapper">
    
    <div class="container">
         <section>
                 <div class="jumbotron">
                   <div class="container">
                   
                      <c:if test="${not empty customError}">
                      
                         <h1>${customError.message}</h1>
                        
                      </c:if>
                      
                      
                   </div>
                 </div>
         </section>
         
         
        <section class="container" >


                 <p>
                <a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a>
                 
                 </p>

            
        </section>
    </div>

</div>

