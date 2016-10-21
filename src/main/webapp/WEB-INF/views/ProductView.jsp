<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
  
 
  </style>
</head>
<body>
	<nav class="navbar navbar-inverse">
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
      
      <c:if test="${!empty categoryList }">
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
 <ul class="nav navbar-nav navbar-right">
        <li><a href="logout"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
       
        
      </ul>
    </div>
  </div>
</nav> 
<%-- <div class="col-sm-12">

 <div class="row">
  <c:forEach items="${productList}" var="product">
    <div class="col-sm-4">
   <a href="productView"><img src="E:\images/${product.name}.jpg" class="img-responsive" style="height:200px; width:50%;box-shadow:4px 4px 0px 0px #000000; " alt="Image"/></a>
      <h4><font face="TIMES NEW ROMAN" color=#101010>${product.name }</font></h4>
         </div>
</c:forEach>   
  </div>

  --%>
	
			<div class="container-fluid text-center bg-grey">
			
			 <div class="row text-center">
<c:forEach items="${productList}" var="product">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="E:\images/${product.name}.jpg" class="img-responsive" style="height:200px; width:60%"/>
						<div class="caption">
							<h4 class="pull-right">${product.price }</h4>
							<p>${product.name }</p>
							
									<a href="<c:url value='addcart/${product.id}' />">Add to Cart</a>
							
						</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span>
								 <span class="glyphicon glyphicon-star"></span>
								  <span	class="glyphicon glyphicon-star"></span>
								   <span class="glyphicon glyphicon-star"></span>
									 <span class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
</c:forEach>
		</div>
		</div>		

				

		


</body>
</html>