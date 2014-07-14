<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'
      xmlns:c="http://java.sun.com/jsp/jstl/core"
      xmlns:form="http://www.springframework.org/tags/form">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <head >
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
   </head>
   <body id='sfm_updateTrackingInfo_body'>   
   
      <form:form commandName="trackingInfo" id='updateTrackingInfo' class='sfm_form' method='post' accept-charset='UTF-8'>
         <div id='updateTrackingInfo_errorloc' class='error_strings' style='width:566px;text-align:left'></div>
         <div id='updateTrackingInfo_outer_div' class='form_outer_div' style='width:566px;height:309px'>
            <div style='position:relative' id='updateTrackingInfo_inner_div'>
               <input type='hidden' name='sfm_form_submitted' value='yes'/>
               <div id='label4_container' class='sfm_form_label'>
                  <label id='label4'>In case of exception you can change  !</label>
               </div>
               <div id='label2_container' class='sfm_form_label'>
                  <label id='label2' for='DatePicker'>Date</label>
               </div>
               <div id='label3_container' class='sfm_form_label'>
                  <label id='label3'>Time</label>
               </div>
               <div class='sfm_element_container' id='DatePicker_container'>
                  <form:input path="deliveryDate" type='text' name='DatePicker' id='DatePicker'/>
                  <input type='text' name='sfm_DatePicker_parsed' id='sfm_DatePicker_parsed' tabindex='-1' style='display:none'/>
                  <div id='DatePicker_image_container'>
                     <img id='DatePicker_image' class='sfm_datepicker_icon' src='<c:url value="/resources/trackinginfo/images/date-picker.gif"/>' width='20' height='20' alt='Click here to open the date picker'/>
                  </div>
               </div>
               <div id='deliveryTime_container'>
                 <form:input path="deliveryTime" type='text' name='deliveryTime' id='deliveryTime' value='12:00AM' size='20' class='sfm_textbox'/>
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