<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <c:url value="/resources/images/jbosscorp_logo.png" /> -->
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
        <h4>Find you work !</h4>
        <h5><a href="deliveryBoy.admin">Add Member !</a></h5>
    
           
        </div>
        
        
      </div>
      <div id="content">
      
      <form:form method="POST" commandName="deliveryBoy">
		<form:errors path="*" cssClass="errorblock" element="div"/>
        <table>
        	<tr><td>Username:</td>
        		<td><form:input path="userName" /></td>
        		<td><form:errors path="userName" cssClass="error"/></td>
        		<td><form:select path="userRole">
        			<form:option value="ROLE_USER">ROLE_USER</form:option>
        			<form:option value="ROLE_ADMIN">ROLE_ADMIN</form:option>
        		</form:select></td>
        	</tr>
        	
        	<tr><td>Password:</td>
        		<td><form:password path="password"/></td>
        		<td><form:errors path="password" cssClass="error"/></td>
        	</tr>
        	<tr><td>Confirm Password:</td>
        		<td><form:password path="confirmPassword"/></td>
        		<td><form:errors path="confirmPassword" cssClass="error"/></td>
        	</tr>
        	<tr><td>First Name:</td>
        		<td><form:input path="firstName"/></td>
        		<td><form:errors path="firstName" cssClass="error"/></td>
        	</tr>
        	<tr><td>Middle Name:</td>
        		<td><form:input path="middleName"/></td>
        		<td><form:errors path="middleName" cssClass="error"/></td>
        	</tr>
        	<tr><td>LastName</td>
        		<td><form:input path="lastName"/></td>
        		<td><form:errors path="lastName" cssClass="error"/></td>
        	</tr>
        	<tr>
				<td>Sex : </td>
				<td><form:radiobutton path="sex" value="M"/>Male 
				<form:radiobutton path="sex" value="F"/>Female</td>
				<td><form:errors path="sex" cssClass="error" /></td>
			</tr>
			<tr><td>Phone Number</td>
        		<td><form:input path="phoneNumber"/></td>
        		<td><form:errors path="phoneNumber" cssClass="error"/></td>
        	</tr>
			<tr><td>Email ID</td>
        		<td><form:input path="emailId"/></td>
        		<td><form:errors path="emailId" cssClass="error"/></td>
        	</tr>
        	<tr>
        		<td>Country:</td>
        		<td><form:input path="country"/></td>
        		<td><form:errors path="country" cssClass="error"/></td>
        	</tr>
			<tr><td>Street Address:</td>
        		<td><form:input path="streetAddress"/></td>
        		<td><form:errors path="streetAddress" cssClass="error"/></td>
        	</tr>
        	<tr><td>City</td>
        		<td><form:input path="city"/></td>
        		<td><form:errors path="city" cssClass="error"/></td>
        		<td>Zip Code:</td>
        		<td><form:input path="zipCode"/></td>
        		<td><form:errors path="zipCode" cssClass="error"/></td>
        	</tr>
        	<tr><td>State:</td>
        		<td><form:input path="state"/></td>
        		<td><form:errors path="state" cssClass="error"/></td>
        	</tr>
    		<tr>
				<td>   </td><td colspan="3"><input type="submit" value="Register"/></td>
				<td>
				Status : ${addStatus}
				</td>
			</tr>
        </table>
        </form:form>
      
      </div>
    </div>
    <div id="footer">
      <p>Copyright &copy; All rights reserved. priorityds.com</p>
    </div>
  </div>
</body>
</html>
