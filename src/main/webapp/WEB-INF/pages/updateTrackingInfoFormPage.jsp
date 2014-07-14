<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page session="true"%>
<!-- <c:url value="" /> -->
<html>

<head>
  <title>PriorityDs</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
<!-- dependency -->
 <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
      <meta name='generator' content='Simfatic Forms 4.0.12.416'/>
      <script src='<c:url value="/resources/trackinginfo/scripts/jquery-1.7.2.min.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/jquery-ui-1.8.18.custom.min.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/globalize.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/jquery-ui-1.8.21.custom.date.min.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/moment.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/sfm_calendar.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/jquery.sim.utils.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackinginfo/scripts/sfm_validatorv7.js"/>' type='text/javascript'></script>
      <link rel='stylesheet' type='text/css' href='<c:url value="/resources/trackinginfo/style/jquery-ui-1.8.16.css"/>'/>
      <link rel='stylesheet' type='text/css' href='<c:url value="/resources/trackinginfo/style/updateTrackingInfo.css"/>'/>
   
<!-- d -->
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
    <!-- Start of Order Details -->
   		<c:if test="${order == null}">
  		 <h4>No Order present with this ID</h4>
  		 <a href="updateTrackingInfo.user?orderId=0">Go Back !</a>
		</c:if>
		
		<c:if test="${order != null}">
			<h3>Tracking ID: ${order.id}</h3>
  			<h3>To : ${order.receiver}</h3>
        	<h5>Delivery Address !</h5>
        	<h4>${order.deliveryStreet}</h4>
        	<h4>${order.deliveryCity}, ${order.deliveryZipCode}</h4> 
        	<h4>${order.deliveryState}</h4>
        	<h4>Contact : ${order.deliveryPhoneNumber}</h4>
        	<h4>Approximate Delivery Date : ${order.deliveryDate}, ${order.deliveryTime}</h4>
        	<h5>Comments : ${order.deliveryComments}</h5>
        	<hr>
        	 <h3>Tracking Information already present !</h3>
       		<c:forEach items="${order.trackingInfo}" var="trackingInfo"> 
  			<h4>&#x02192 ${trackingInfo.infoType}</h4>
  			<p>${trackingInfo.details}</p> 
			</c:forEach> 
        	<!-- Form Start here -->
        	<form:form commandName="trackingInfo" id='updateTrackingInfo' class='sfm_form' method='post' accept-charset='UTF-8'>
         <div id='updateTrackingInfo_errorloc' class='error_strings' style='width:566px;text-align:left'></div>
         <div id='updateTrackingInfo_outer_div' class='form_outer_div' style='width:566px;height:309px'>
            <div style='position:relative' id='updateTrackingInfo_inner_div'>
               <input type='hidden' name='sfm_form_submitted' value='yes'/>
               <input type="hidden" name="orderId" value="${order.id}">
               <div id='label4_container' class='sfm_form_label'>
                  <label id='label4'></label>
                  <input type="checkbox" name="change" value="yes">Change Date and Time of Delivery !<br>
               </div>
               <div id='label2_container' class='sfm_form_label'>
                  <label id='label2' for='DatePicker'>Date</label>
               </div>
               <div id='label3_container' class='sfm_form_label'>
                  <label id='label3'>Time</label>
               </div>
               <div class='sfm_element_container' id='DatePicker_container'>
                  <input type='text' name='DatePicker' id='DatePicker' />
                  <input type='text' name='sfm_DatePicker_parsed' id='sfm_DatePicker_parsed' tabindex='-1' style='display:none'/>
                  <div id='DatePicker_image_container'>
                     <img id='DatePicker_image' class='sfm_datepicker_icon' src='<c:url value="/resources/trackinginfo/images/date-picker.gif"/>' width='20' height='20' alt='Click here to open the date picker'/>
                  </div>
               </div>
               <div id='deliveryTime_container'>
                 <input  type='text' name='deliveryTime' id='deliveryTime' value='${order.deliveryTime}' size='20' class='sfm_textbox'/>
               </div>
               <div id='label_container' class='sfm_form_label'>
                  <label id='label' for='infoType'>Information Type</label>
               </div>
               <div id='infoType_container'>
                  <form:select path="infoType" name='infoType' id='infoType' size='1'>
                     <form:option value='Office Arrival'>Office Arrival</form:option>
                     <form:option value='Office Departure'>Office Departure</form:option>
                     <form:option value='In Transit'>In Transit</form:option>
                     <form:option value='Exception'>Exception</form:option>
                     <form:option value='Delivered'>Delivered</form:option>
                     <form:option value='Other'>Other</form:option>
                  </form:select>
               </div>
               <div id='box_element'></div>
               <div id='label1_container' class='sfm_form_label'>
                  <label id='label1' for='details'>Details</label>
               </div>
               <div id='details_container'><form:textarea path="details" name='details' id='details' class='sfm_textarea'></form:textarea></div>
               <div id='Submit_container' class='loading_div'>
                  <input type='submit' name='Submit' value='Submit' id='Submit'/>
               </div>
            </div>
         </div>
<div class='sfm_cr_box' style='padding:3px; width:350px;cursor:default'></div>
      </form:form>
        	<!-- Form end -->
			<%-- <jsp:include page="updateTrackingInfoForm.jsp" /> --%>
      	</c:if>
      </div>
    </div>
    <div id="footer">
      <p>Copyright &copy; All rights reserved. priorityds.com</p>
    </div>
  </div>
  <!-- Scripts -->
   <script type='text/javascript'>
// <![CDATA[
$(function()
{
   new sfm_calendar({input_id:"DatePicker",image_id:"DatePicker_image",form_id:"updateTrackingInfo",mirror:"sfm_DatePicker_parsed",smart_init:"today + 1 days"})
   sfm_init_default_text("updateTrackingInfo","deliveryTime","12:00AM");
   sfm_show_loading_on_formsubmit('updateTrackingInfo','Submit');
});

// ]]>
      </script>
      <script type='text/javascript'>
// <![CDATA[
var updateTrackingInfoValidator = new Validator("updateTrackingInfo");
updateTrackingInfoValidator.addValidation("deliveryTime",{regexp:"^(0?\\d|1[0-2])[:\\.][0-5]\\d\\s*(AM|PM|am|pm)?$",message:"Please enter a valid input for deliveryTime"} );
updateTrackingInfoValidator.addValidation("deliveryTime",{required:true,message:"Please fill in deliveryTime"} );
updateTrackingInfoValidator.addValidation("details",{maxlen:"224",message:"The length of the input for details should not exceed 224"} );
updateTrackingInfoValidator.addValidation("details",{required:true,message:"Please fill in details"} );

// ]]>
      </script>
</body>
</html>
