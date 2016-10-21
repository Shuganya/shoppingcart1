<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
 .navbar {
      margin-bottom: 60px;
      border-radius: 10px;
     
    }
    </script>
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
      
      
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="LoginHere"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
      </ul>
    </div>
  </div>
</nav> 
</body>
</html>