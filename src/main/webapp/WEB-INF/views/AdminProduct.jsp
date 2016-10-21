<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>

<body>

	 <div class="container-fluid" style="background-color:black;color:gray;height:80px;">
  <center><h2>WELCOME ADMIN</h2></center>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   <ul class="nav navbar-nav navbar-right">
      <li><a href="viewCustomers">View Customers</a></li>
       <li><a href="#">View Products</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-0ut"></span> Log Out</a></li>
    </ul>
  </div>
</nav>
   <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked" data-offset-top="205">
        <li class="active">
        <a href="manageProducts">PRODUCT</a></li>
        <li><a href="manageSuppliers">SUPPLIER</a></li>
        <li><a href="manageCategories">CATEGORY</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
    <div class="container-fluid"
		style="background-color: gray; color: purple; height: 80px;">
		<center>
			<h2>Product Details</h2>
		</center>
	</div>
	<div class="container">

<h1>Add a Product</h1>
<c:url var="addAction" value="/addproduct"></c:url>
<form:form action="${addAction}" commandName="product" enctype="multipart/form-data" class="form-horizontal">
<div class="form-group">	
<form:label path="id" class="control-label col-sm-2">
<spring:message text="ID" />
</form:label>
<div class="col-sm-10">
<c:choose>				
<c:when test="${!empty product.id}">
<form:input path="id" disabled="true" readonly="true"/>
</c:when>
<c:otherwise>
<form:input path="id" patttern=".{3,7}" required="true" title="id should contains 3 to 7 characters" />
</c:otherwise>
</c:choose>
<form:input path="id" hidden="true"  />
</div>
</div>
<br>
<div class="form-group">
<form:label path="name" class="control-label col-sm-2">
<spring:message text="Name" />
</form:label>
<div class="col-sm-10">
<form:input path="name" required="true" class="form-control" />
</div>
</div>
<br>
<div class="form-group">
<form:label path="price" class="control-label col-sm-2" >
<spring:message text="Price" />
</form:label>
<div class="col-sm-10">
<form:input path="price" required="true" class="form-control" />
</div>
</div>
<br>
<div class="form-group">
<form:label path="description" class="control-label col-sm-2" >
<spring:message text="Description" />
</form:label>
<div class="col-sm-10">
<form:input path="description" required="true" class="form-control" />
</div>
</div>
<br>
<div class="form-group">
<form:label path="quantity" class="control-label col-sm-2" >
<spring:message text="Quantity" />
</form:label>
<div class="col-sm-10">
<form:input path="quantity" required="true" class="form-control" />
</div>
</div>
<br>
<div class="form-group">
<form:label path="supplier_id" class="control-label col-sm-2">
<spring:message text="Supplier" />
</form:label>
<div class="col-sm-10">
<form:select path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" class="form-control"/>
</div>
</div>
<br>				
<div class="form-group">
<form:label path="category_id" class="control-label col-sm-2">
<spring:message text="Category" />
</form:label>
<div class="col-sm-10">
<%-- <td><form:input path="category.name" required="true" /></td> --%>
<form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" class="form-control" />
</div>
</div>
<br>
<div class="form-group">
<form:label path="image"  class="control-label col-sm-2">Image</form:label>   
<div class="col-sm-10">    
<form:input type="file" path="image" class="form-control" />
</div>
</div>
<br>
<div class="form-group">        
<div class="col-sm-offset-2 col-sm-10">
<c:if test="${!empty product.name}">
<input type="submit" class="btn btn-success" value="<spring:message text="Edit Product"/>" />
</c:if> 
<c:if test="${empty product.name}">
<input type="submit" class="btn btn-primary" value="<spring:message text="Add Product"/>" />
</c:if>
</div>
</div>
</form:form>
<br>
	<h3>Product List</h3>						
<c:if test="${!empty productList}">
<div class="table-responsive">
<table class="table">
<thead>
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Price</th>
<th>Product Category</th>
<th>Product Supplier</th>
<th>Product Image</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<c:forEach items="${productList}" var="product">
<tr>
<td>${product.id}</td>
<td>${product.name}</td>
<td>${product.description}</td>
<td>${product.price}</td>
<td>${product.category.name}</td>
<td>${product.supplier.name}</td>
<td><img src="E:\images/${product.name}.jpg" class="img-responsive" style="height:150px; width:40%;"/></td>
<td><a href="<c:url value='editproduct/${product.id}' />">Edit</a></td>
<td><a href="<c:url value='removeproduct/${product.id}' />">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</c:if>
</div>
</div>
</body>
</html>