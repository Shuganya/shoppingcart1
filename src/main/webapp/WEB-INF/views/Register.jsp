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
<div class="jumbotron" style="background-color: lightgray;" >
  <div class="container text-left" style="height:65px">
  <h1 style="font-style:italic ;font-family:Georgia, 'Times New Roman', Times, serif"> Baby's Shop Zone</h1>
   </div>
</div>
<%@include file="header.jsp" %>
	
 
  
	<center><p>Please Fill Up the details</p>
	</center>
	
		<div class="container">
		  
		
		<c:url var="addAction" value="/RegisterSuccess">
		</c:url>
		<form:form method="post" action="${addAction } " class="form-horizontal" modelAttribute="Userdetails"> 
		
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
   <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('userId')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="USER NAME:"/></label>
    <div class="col-sm-10">
    
					<input type="text" class="form-control" name="username"/>
     
    </div>
  </div><br>
  <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
					
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="FULL NAME:"/></label>
    <div class="col-sm-10"> 
      <input type="text" class="form-control" name="fullname"/>
    </div>
  </div><br>
   <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('fullname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="EMAIL:"/></label>
    <div class="col-sm-10"> 
      <input type="email" class="form-control" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
    </div>
  </div><br>
   <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
  <div class="form-group">
    <label  class="control-label col-sm-2"><spring:message text="MOBILE NO:"/></label>
    <div class="col-sm-10"> 
      <input type="number" class="form-control" name="contact" pattern="/(7|8|9)\d{9}/" title="Please enter valid mobile number">
    </div>
  </div><br>
   <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contact')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
  
  <div class="form-group">
    <label class="control-label col-sm-2"><spring:message text="PASSWORD:"/></label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" name="password" pattern=".{6,8}" title="password should contain 6 to 8 characters">
    </div>
  </div>
  <br>
   <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
  
					  
  	<center><button name="_eventId_submit" type="submit" class="btn btn-success">REGISTER</button></center>

	 </form:form>
</div>	
</body>
</html>
				<!-- <div
				style="width: 400px; height: 540px; padding: 10px; border: 3px solid black"> -->
				
				


			
		
		