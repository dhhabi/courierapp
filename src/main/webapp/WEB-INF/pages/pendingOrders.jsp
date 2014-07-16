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
      
     	   <jsp:include page="pendingOrdersTable.jsp"/>  
      
    </div>
    <div id="footer">
      <p>Copyright &copy; All rights reserved. priorityds.com</p>
    </div>
  </div>

</body>
</html>
