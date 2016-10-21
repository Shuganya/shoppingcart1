<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form:form action="/cardDetail/${cartId}" method="post" commandName="carddetail">
                   <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Payment Details </h3>
					</div>
					
					<div class="span4">
					  <div class="control-group">
					  <label class="control-label">Card Type</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cardType" cssStyle="color: #ff0000"/>
						<form:select path="cardType">
			    		<form:option value="" label="----Please Select------" />
			    		<form:options items="${cardTypeList}" />
						</form:select>
						</div>
						</div>
					  <div class="control-group">
					  <label class="control-label">Card Number</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cardNumber" cssStyle="color: #ff0000"/>
						<form:input path="cardNumber" id="name" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">Expiry Date</label>
						<div class="controls docs-input-sizes">
						<form:errors path="expiryMonth" cssStyle="color: #ff0000"/>
						 <form:select path="expiryMonth">
				            <form:option value="" label="MM" />
				    		<form:options items="${expiryMonthList}" />
							</form:select>
							</div>
							<div class="control-group">
							<div class="controls docs-input-sizes">
							<form:errors path="expiryYear" cssStyle="color: #ff0000"/>
							<form:select path="expiryYear">
				    		<form:option value="" label="YYYY" />
				    		<form:options items="${expiryYearList}" />
							</form:select>
						</div>
						</div>
						</div>
						</div>
						<div class="span4">
						<div class="control-group">
					  <label class="control-label">CVV2/CVC2 Number</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cvNumber" cssStyle="color: #ff0000"/>
						<form:password path="cvNumber" id="cvnumber" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">Name ON Card</label>
						<div class="controls docs-input-sizes">
						<form:errors path="nameOnCard" cssStyle="color: #ff0000"/>
						<form:input path="nameOnCard" id="nameoncard" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">ATM Pin</label>
						<div class="controls docs-input-sizes">
						<form:errors path="atmPin" cssStyle="color: #ff0000"/>
						<form:password path="atmPin" id="pin" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label >Total Amount : Rs. ${grandTotal}</label>
						</div>
						<div class="span2 no_margin_left">
					  <input type="submit" value="Pay Now" class="btn btn-primary pull-left">
						 </div>
						 <div class="span1 no_margin_left">
					 	<a href="<c:url value="/" />" class="btn btn-danger pull-left">Cancel</a>
					    </div>
				</div>
        </div>
        
        </form:form>
</body>
</html>