<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
p {
	color: black;
	font-weight: bold;
	font-decoration: underline;
	font-size: 20px;
	font-family: Tahoma Sans-serif Geneva;
}

label {
	color: pink;
	font-weight: bold;
	font-size: 13px;
	font-family: arial;
}
</style>

</head>
<body background="E:\programs\ShoppingCartFrontEnd\src\main\webapp\images\reg.jpg">
<%@include file="header.jsp" %>
	
<form:form method="post" action="${addAction}" commandName="Userdetails" class="form-horizontal">  
    <div class="span12 margin-top">
                   <div class="span12 center margin-bottom"> 
	<center><p>Please Fill Up the details</p>
	</center>
	</div>
		<div class="container">
		  <div class="span6 no_margin_left">
		<!-- class="form-horizontal" role="form"  class="form" commandName="userDetails" name="form1" onsubmit="return a()" -->
		<c:url var="addAction" value="/RegisterSuccess">
		</c:url>
		<%-- <a href="${flowExecutionUrl}&_eventId_home">Home</a> --%>
		
<div class="form-group">
 <label class="control-label col-sm-2"><spring:message text="USER ID:"/></label>
    <div class="col-sm-10">
    <%
						Random r = new Random();
						int id = r.nextInt(999);
					%>
					<input type="text" class="form-control" name="userid" required="true" value="<%=id%>"/>
     
    </div>
  </div><br>
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="USER NAME:"/></label>
    <div class="col-sm-10">
    
					<input type="text" class="form-control" name="username" required="true"/>
     
    </div>
  </div><br>
 
					
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="FULL NAME:"/></label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" name="fullname" required="true"/>
    </div>
  </div><br>
  
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="EMAIL:"/></label>
    <div class="col-sm-10"> 
      <input type="email" class="form-control" name="email" required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
    </div>
  </div><br>
  
  <div class="form-group">
    <label  class="control-label col-sm-2"><spring:message text="MOBILE NO:"/></label>
    <div class="col-sm-10"> 
      <input type="number" class="form-control" name="contact" required="true" title="Please enter valid mobile number" pattern="[789][0-9]{9}">
    </div>
  </div><br>
  
  
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="PASSWORD:"/></label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" name="password" pattern=".{6,8}" required="true" title="password should contain 6 to 8 characters">
    </div>
  </div>
  <br>
  </div>
   <div class="span6">
					<legend>Billing Address </legend>
					  <div class="control-group">
						<label class="control-label">House Number</label>
						<div class="controls docs-input-sizes">
						  <form:input path="billingAddress.houseNumber" id="billingHouseNumber" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Address Line 1</label>
						<div class="controls docs-input-sizes">
						 <form:input path="billingAddress.addressLine1" id="billingAddressLine1" class="form-Control"/>
						</div>
					   </div>
					   <div class="control-group">
						<label class="control-label">Address Line 2</label>
						<div class="controls docs-input-sizes">
						 <form:input path="billingAddress.addressLine2" id="billingAddressLine2" class="form-Control"/>
						</div>
					   </div>					 
					   <div class="control-group">
						<label class="control-label">City</label>
						<div class="controls docs-input-sizes">
						  <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">State</label>
						<div class="controls docs-input-sizes">
						  <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls docs-input-sizes">
							<form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Zipcode</label>
						<div class="controls docs-input-sizes">
							<form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
						</div>
					  </div>
					  </div>
  	<center><button type="submit" class="btn btn-success">REGISTER</button></center>
 </div>
		</div>
	 </form:form>
</body>
</html>
				<!-- <div
				style="width: 400px; height: 540px; padding: 10px; border: 3px solid black"> -->
				
				


			
		
		