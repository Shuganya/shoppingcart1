<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Categories</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
			<h2>Supplier Details</h2>
		</center>
	</div>
	<div class="container">
	<h1>Add a Supplier</h1>		
	<c:url var="addAction" value="/addsupplier"></c:url>

	<form:form action="${addAction}" commandName="supplier" class="form-horizontal">
	<div class="form-group">
<form:label path="id" class="control-label col-sm-2"  >
						<spring:message text="Supplier ID" />
					</form:label>
					<div class="col-sm-10">
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" pattern =".{3,7}" required="true" title="id should contains 3 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			
			<form:input path="id"  hidden="true"  />
			</div>
			</div>
			<br>
			<div class="form-group">
				<form:label path="name" class="control-label col-sm-2" >
						<spring:message text="Supplier Name" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="name" required="true" />
				</div>
				</div>
				<br>
				<div class="form-group">
			<form:label path="address" class="control-label col-sm-2" >
						<spring:message text="Supplier Address" />
					</form:label>
					<div class="col-sm-10">
				<form:input path="address" required="true" />
			</div>
			</div>
			<br>
			<div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
				<c:if test="${!empty supplier.name}">
						<input type="submit" class="btn btn-primary"
							value="<spring:message text="Edit Supplier"/>" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Supplier"/>" />
					</c:if>
		</div>
		</div>
	</form:form>	
	<br>
	<h3>Supplier List</h3>
	<c:if test="${!empty supplierList}">
	<div class="table-responsive">
	<table class="table">
			<thead>
			<tr>
				<th>Supplier ID</th>
				<th>Supplier Name</th>
				<th>Supplier Address</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='/editsupplier/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='/removesupplier/${supplier.id}' />">Delete</a></td>
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