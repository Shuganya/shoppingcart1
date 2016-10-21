<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
		style="background-color: gray; color: purple; height: 60px;">
		<center>
			<h2>Customer Details</h2>
		</center>
	</div>
	<div class="container">
	<c:if test="${!empty ListUserdetails}">
	<div class="table-responsive">
	<table class="table">
			<thead>
			<tr>
				<th>USER ID</th>
				<th>USERNAME</th>
				<th>MOBILE NO</th>
				<th>MAIL ID</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${ListUserdetails}" var="userdetails">
				<tr>
					<td>${userdetails.userid}</td>
					<td>${userdetails.username}</td>
					<td>${userdetails.contact}</td>
					<td>${userdetails.email}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	</c:if>
	</div>



</body>