<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns='http://www.w3.org/1999/xhtml'
      xmlns:c="http://java.sun.com/jsp/jstl/core">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page session="true"%>      
      
   <head >
      <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
      <meta name='generator' content='Simfatic Forms 4.0.12.416'/>
      <script src='<c:url value="/resources/trackingidform/scripts/jquery-1.7.2.min.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackingidform/scripts/jquery.sim.utils.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/trackingidform/scripts/sfm_validatorv7.js"/>' type='text/javascript'></script>
      <link rel='stylesheet' type='text/css' href='<c:url value="/resources/trackingidform/style/trackingIdForm.css"/>'/>
   </head>
   <body id='sfm_trackingIdForm_body'>
      <form id='trackingIdForm' class='sfm_form' method='get' action='' accept-charset='UTF-8'>
         <div id='trackingIdForm_errorloc' class='error_strings' style='width:264px;text-align:left'></div>
         <div id='trackingIdForm_outer_div' class='form_outer_div' style='width:264px;height:174px'>
            <div style='position:relative' id='trackingIdForm_inner_div'>
               
               <div id='label_container' class='sfm_form_label'>
                  <label id='label' for='orderId'>Enter Tracking Id here !</label>
               </div>
               <div id='orderId_container'>
                  <input type='text' name='orderId' id='orderId' size='20' class='sfm_textbox'/>
               </div>
               <div id='Submit_container' class='loading_div'>
                  <input type='submit' name='Submit' value='Submit' id='Submit'/>
               </div>
            </div>
         </div>
<div class='sfm_cr_box' style='padding:3px; width:350px;cursor:default'></div>
      </form>
      <script type='text/javascript'>
// <![CDATA[
$(function()
{
   sfm_show_loading_on_formsubmit('trackingIdForm','Submit');
});

// ]]>
      </script>
      <script type='text/javascript'>
// <![CDATA[
var trackingIdFormValidator = new Validator("trackingIdForm");
trackingIdFormValidator.addValidation("orderId",{required:true,message:"Please fill in Textbox"} );
trackingIdFormValidator.addValidation("orderId",{numeric:true,message:"The input for Textbox should be a valid numeric value"} );

// ]]>
      </script>
   </body>
</html>
