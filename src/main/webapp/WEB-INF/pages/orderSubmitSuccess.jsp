<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page session="true"%>
<!-- <c:url value="" /> -->
<html>

<head>
  <title>PriorityDs</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine&amp;v1" />
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" />
<!--   <link rel="stylesheet" type="text/css" href="style/style.css" /> -->
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/images/style.css" />" />
</head>

<body>
  <div id="main">
    <div id="header">
	<!-- <img  src="style/logo.png"  /> -->
      <div id="logo">
        <div class="slogan">Big or Small, We handle it all ! </div> 
        <h1>Priority<a href="#">Ds</a></h1>
      </div>
      <jsp:include page="menu.jsp" />
    </div>
    <div id="site_content">
      <div id="sidebar_container">
        <img class="paperclip" src="<c:url value="/resources/images/paperclip.png" />" alt="paperclip" />
        <div class="sidebar">
        <h3>       </h3>
    <!-- Logout Code -->
    <c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
	<!-- Logout code ends -->
        <!-- admin Menu -->
         <jsp:include page="userMenu.jsp" />
        </div>
        
        
      </div>
      <div id="content">
      <h4>${status }</h4>
      	<c:if test="${order != null}">
      		<h3>Tracking ID: ${orderId}</h3>
  			<h3>From : ${order.sender}</h3>
        	<h5>Pick Up Address !</h5>
        	<h4>${order.pickUpStreet}</h4>
        	<h4>${order.pickUpCity}, ${order.pickUpZipCode}</h4> 
        	<h4>${order.pickUpState}</h4>
        	<h4>Contact : ${order.pickUpPhoneNumber}</h4>
        	<h4>Pick Up Date : ${order.pickUpDate}, ${order.pickUpTime}</h4>
        	<h5>Comments : ${order.pickUpComments}</h5>
  			
  			<h3>To : ${order.receiver}</h3>
        	<h5>Delivery Address !</h5>
        	<h4>${order.deliveryStreet}</h4>
        	<h4>${order.deliveryCity}, ${order.deliveryZipCode}</h4> 
        	<h4>${order.deliveryState}</h4>
        	<h4>Contact : ${order.deliveryPhoneNumber}</h4>
        	<h4>Approximate Delivery Date : ${order.deliveryDate}, ${order.deliveryTime}</h4>
        	<h5>Comments : ${order.deliveryComments}</h5>
        	
        	<h5>Other Info :) Caller: ${order.caller }, Ref: ${order.reference }, Approx. Weight: ${order.approxWeight }, No of Pieces: ${order.noOfPieces }</h5>
        	<h5>Email : ${order.email }</h5>
        	
        	<hr>
        	 <h3>Tracking Information !</h3>
       		<c:forEach items="${order.trackingInfo}" var="trackingInfo"> 
  			<h4>&#x02192 ${trackingInfo.infoType}</h4>
  			<p>${trackingInfo.details}</p> 
			</c:forEach> 
			
			<h4>Wanna Edit Something ?</h4><h5><a href="updateOrder.user?orderId=${orderId}">Click Here !</a></h5>
      	</c:if>
      
      </div>
    </div>
    <div id="footer">
      <p>Copyright &copy; All rights reserved. priorityds.com</p>
    </div>
  </div>
</body>
</html>
