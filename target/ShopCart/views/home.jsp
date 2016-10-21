<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="spring" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="form" %> 
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 60px;
      border-radius: 10px;
     
    }
   
    /* Remove the jumbotron's default bottom margin */
      .jumbotron {
      margin-bottom: 0;
      padding:5px;
      background-size:cover;
     }
         footer {
      background-color:#555;
      color: white;
      padding: 15px;
    }
    
   
    h2{
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;

font-weight:bold;
font-size:40px;
}
#header {
position:fixed;
top:0px;
left:0px;
width:100%;
padding:15px;
}


     .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
     width:70%;
      margin: auto;
  }
  
 
  </style>
</head>

<body>
<div class="jumbotron">
   <img src=<c:url value="E:\programs\CopyofBabysCart\src\main\webapp\images\babykids6.png"/> class="img-responsive" >
 
</div>
<%-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
          </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> Home</a></li>
 
      <li class="dropdown">
      
      <c:if test="${not empty categoryList }">
<c:forEach items="${categoryList}" var="category">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${category.name}">${category.name}</a>
<ul class="dropdown-menu">
<c:forEach items="${category.products}" var="product">
<li><a href="<c:url value='product/get/${product.id}'/>">${product.name}</a></li>
</c:forEach>
</ul>
</li>
</c:forEach>
</c:if>
</ul>
      
      
       <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#">Kids Clothing<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="girlsclothing.jsp">Girls' Clothing</a></li>
        <li><a href="#">Boys' Clothing</a></li>
        <li><a href="#">Baby Girl Clothing</a></li>
        <li><a href="#">Baby Boy Clothing</a></li>
      </ul>
    </li>
 
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown"  href="#">Kids Footwear<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Girls' Footwear</a></li>
       <li><a href="#">Boys' Footwear</a>        </li>
        <li><a href="#">Baby Footwear</a></li>
       
      </ul>
    </li>
    
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Toys<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Soft Toys</a></li>
        <li><a href="#">Musical Toys</a></li>
        <li><a href="#">Remote Control Toys</a></li>
       
       
      </ul>
    </li>
    
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">Baby Care<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Baby Gifting Sets</a></li>
        <li><a href="#">Baby Bedding</a></li>
        <li><a href="#">Baby Grooming</a></li>
        <li><a href="#">Baby Bath Skin Care</a></li>
       
      </ul>
    </li>
 
 
 </ul>
  -->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
      </ul>
    </div>
  </div>
</nav>  --%>

<%@include file="header.jsp" %>



<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
     
   
  </ol>

 <!-- Wrapper for slides-->
   <div class="carousel-inner" role="listbox">
    

    <div class="item active">
      <img src="E:\programs\BabysCart\src\main\webapp\images\babykids1.png" width="460" height="345">
      <div class="carousel-caption">
          <h3>Child Toys Playing People Play</h3>
          
        </div>
    </div>

    <div class="item">
      <img src="E:\programs\BabysCart\src\main\webapp\images\babykids2.jpg" width="460" height="345">
      <div class="carousel-caption">
          <h3>Bear Toys</h3>
          
        </div>
    </div>
<div class="item">
      <img src="E:\programs\BabysCart\src\main\webapp\images\babykids3.jpg" width="460" height="345">
      <div class="carousel-caption">
          <h3>Toy Ducks,Plastic,Toys,Ducks</h3>
         
        </div>
    </div>
   
  </div>
  
  <!-- Left and right controls-->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> <br><br> 
<div class="col-sm-12">
  <div class="row">
  <c:forEach items="${productList}" var="product">
    <div class="col-sm-4">
   <a href="productView"><img src="E:\images/${product.name}.jpg" class="img-responsive" style="height:200px; width:50%;box-shadow:4px 4px 0px 0px #000000; " alt="Image"/></a>
      <h4><font face="TIMES NEW ROMAN" color=#101010>${product.name }</font></h4>
         </div>
</c:forEach>   
  </div>
  </div>
  
            
<div class="col-sm-12">
<div class="row">
<footer class="container-fluid text-right">
	<div class="col-sm-3">
	<div class="page-header">
	
	<h4 style="color:#E0E0E0; text-align:left">Store information</h4>
	</div>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">About us</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Privacy Policy</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Term of Use</a></p>
	</div>
	<div class="col-sm-3">
	<div class="page-header">
	
	<h4 style="color:#E0E0E0; text-align:left">Services and Support</h4>
	</div>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Shopping Gaurantee</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Premium Warranty</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Order Lookup</a></p>
	</div>
	<div class="col-sm-3">
	<div class="page-header">
	
	<h4 style="color:#E0E0E0; text-align:left">Social</h4>
	</div>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;" class="soc-twitter">Twitter</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;" >Facebook</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;" class="glyphicon glyphicon-envelope"> Gmail</a></p>
	</div>
	<div class="col-sm-2">
	<div class="page-header">
	
	<h4 style="color:#E0E0E0; text-align:left">News and updates</h4>
	</div>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Special Offers</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">Deals</a></p>
	<p style="text-align:left"><a href="#" style="color:#E0E0E0;">New product updates</a></p>
	</div>
	
	
	
	<div class="col-sm-12">
	<div class="page-header">
	<div class="col-sm-12">
	<div class="row">
		<p style="margin-top:15px"><a href="#" style="color:#E0E0E0"> &copycopyright.babyscart.com</a>       <span> | </span>       <span><a href="#" style="color:#E0E0E0"  >follow us</a></span>        <span> | </span>           <span><a href="#" style="color:#E0E0E0">about us</a></span></p>		
		</div>
		</div></div>
		</div>
			


</footer>
</div>
</div>
</body>
</html>