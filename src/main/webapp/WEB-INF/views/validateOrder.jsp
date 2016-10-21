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
 <form:form commandName="order" class="form-horizaontal">
              <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Order Details</h3>
					</div>
						<div class="span4">

                               
                            <div class="col-xs-12 col-sm-12 col-md-12 ">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="span4">
                                 <address>
                                    <strong>Billing Address</strong><br>
                                        ${order.cart.usersDetail.billingAddress.houseNumber}
                                    <br>
                                        ${order.cart.usersDetail.billingAddress.addressLine1},${order.cart.usersDetail.billingAddress.addressLine2}
                                    <br>
                                        ${order.cart.usersDetail.billingAddress.city}, ${order.cart.usersDetail.billingAddress.state}
                                    <br>
                                        ${order.cart.usersDetail.billingAddress.country}, ${order.cart.usersDetail.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                      
                        <div class="row margin-left25" ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
								<table class="table table-bordered table-striped fs13">
								  <thead>
									  <tr>
										
										<th >Image</th>
										<th class="width110">Product Name</th>
										<th class="width110">Unit Price</th>
										<th>Quantity</th>
										<th>Price(in Rs.)</th>
										
									  </tr>
									</thead>
									<tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}" >
                                    <tr>
                                    <td class="span1"><img src="<c:url value="/resources/images/${cartItem.item.itemId}.png" /> " alt="image"/></td>
                                        <td class="col-md-9"><em>${cartItem.item.itemName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.item.itemPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total(in Rs.) </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>${order.cart.grandTotal}</strong></h4>
                                    </td>
				<td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <div class="span3 center">
					 	 <button class="btn btn-primary" name="_eventId_backToShippingAddProcess">Back</button>
					    </div>
					  <div class="span3 center ">
					  <input type="hidden" name="_flowExecutionKey" />
						<input type="submit" value="Submit Order" class="btn btn-primary"
                               name="_eventId_validateOrderProcessCompleted"/>
						 </div>
						 <div class="span2 center ">
					 	<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
					    </div>
                        
                    </div>
                </form:form>

           

</body>
</html>