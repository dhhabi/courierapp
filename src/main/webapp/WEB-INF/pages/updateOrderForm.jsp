<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'
      xmlns:c="http://java.sun.com/jsp/jstl/core"
      xmlns:form="http://www.springframework.org/tags/form">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <head >
      <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
      <title >Form Page: orderForm</title>
      <meta name='generator' content='Simfatic Forms 4.0.12.416'/>
      <script src='<c:url value="/resources/order/scripts/jquery-1.7.2.min.js" />' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/jquery-ui-1.8.18.custom.min.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/globalize.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/jquery-ui-1.8.21.custom.date.min.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/moment.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/sfm_calendar.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/jquery.sim.utils.js"/>' type='text/javascript'></script>
      <script src='<c:url value="/resources/order/scripts/sfm_validatorv7.js"/>' type='text/javascript'></script>
      <link rel='stylesheet' type='text/css' href='<c:url value="/resources/order/style/jquery-ui-1.8.16.css"/>'/>
      <link rel='stylesheet' type='text/css' href='<c:url value="/resources/order/style/orderForm.css"/>'/>
  </head>
    <body id='sfm_orderForm_body'>
      <form:form commandName="order" id='orderForm' class='sfm_form' method='post' accept-charset='UTF-8'>
         <div id='orderForm_errorloc' class='error_strings' style='width:894px;text-align:left'></div>
         <div id='orderForm_outer_div' class='form_outer_div' style='width:894px;height:431px'>
            <div style='position:relative' id='orderForm_inner_div'>
               <input type='hidden' name='sfm_form_submitted' value='yes'/>
               <form:input path="id" type="hidden" value="${order.id}" />
               <div id='heading_container' class='form_subheading'>
                  <h2 id='heading' class='form_subheading'>Pick Up</h2>
               </div>
               <div id='heading1_container' class='form_subheading'>
                  <h2 id='heading1' class='form_subheading'>Delivery</h2>
               </div>
               <div id='label2_container' class='sfm_form_label'>
                  <label id='label2' for='sender'>Sender</label>
               </div>
               <div id='label12_container' class='sfm_form_label'>
                  <label id='label12' for='receiver'>Receiver</label>
               </div>
               <div id='sender_container'>
                  <form:input path="sender" type='text' name='sender' id='sender' size='20' class='sfm_textbox'/>
               </div>
               <div id='receiver_container'>
                  <form:input path="receiver" type='text' name='receiver' id='receiver' size='20' class='sfm_textbox'/>
               </div>
               <div id='label6_container' class='sfm_form_label'>
                  <label id='label6' for='pickUpStreet'>Street</label>
               </div>
               <div id='label14_container' class='sfm_form_label'>
                  <label id='label14' for='deliveryStreet'>Street</label>
               </div>
               <div id='deliveryStreet_container'>
                  <form:input path="deliveryStreet" type='text' name='deliveryStreet' id='deliveryStreet' size='20' class='sfm_textbox'/>
               </div>
               <div id='pickUpStreet_container'>
                  <form:input path="pickUpStreet" type='text' name='pickUpStreet' id='pickUpStreet' size='20' class='sfm_textbox'/>
               </div>
               <div id='label7_container' class='sfm_form_label'>
                  <label id='label7' for='pickUpCity'>City</label>
               </div>
               <div id='label15_container' class='sfm_form_label'>
                  <label id='label15' for='deliveryCity'>City</label>
               </div>
               <div id='label4_container' class='sfm_form_label'>
                  <label id='label4' for='pickUpZipCode'>Zip Code</label>
               </div>
               <div id='label13_container' class='sfm_form_label'>
                  <label id='label13' for='deliveryZipCode'>Zip Code</label>
               </div>
               <div id='pickUpCity_container'>
                  <form:input path="pickUpCity" type='text' name='pickUpCity' id='pickUpCity' size='20' class='sfm_textbox'/>
               </div>
               <div id='pickUpZipCode_container'>
                  <form:input path="pickUpZipCode" type='text' name='pickUpZipCode' id='pickUpZipCode' size='20' class='sfm_textbox'/>
               </div>
               <div id='deliveryCity_container'>
                  <form:input path="deliveryCity" type='text' name='deliveryCity' id='deliveryCity' size='20' class='sfm_textbox'/>
               </div>
               <div id='deliveryZipCode_container'>
                  <form:input path="deliveryZipCode" type='text' name='deliveryZipCode' id='deliveryZipCode' size='20' class='sfm_textbox'/>
               </div>
               <div id='label8_container' class='sfm_form_label'>
                  <label id='label8' for='pickUpDate'>Date</label>
               </div>
               <div id='label16_container' class='sfm_form_label'>
                  <label id='label16' for='deliveryDate'>Date</label>
               </div>
               <div id='label28_container' class='sfm_form_label'>
                  <label id='label28' for='pickUpState'>State</label>
               </div>
               <div id='label29_container' class='sfm_form_label'>
                  <label id='label29' for='deliveryState'>State</label>
               </div>
               <div class='sfm_element_container' id='pickUpDate_container'>
                  <form:input path="pickUpDate" type='text' name='pickUpDate' id='pickUpDate'/>
                  <input type='text' name='sfm_pickUpDate_parsed' id='sfm_pickUpDate_parsed' tabindex='-1' style='display:none'/>
                  <div id='pickUpDate_image_container'>
                     <img id='pickUpDate_image' class='sfm_datepicker_icon' src='<c:url value="/resources/order/images/date-picker.gif"/>' width='20' height='20' alt='Click here to open the date picker'/>
                  </div>
               </div>
               <div class='sfm_element_container' id='deliveryDate_container'>
                  <form:input path="deliveryDate" type='text' name='deliveryDate' id='deliveryDate'/>
                  <input type='text' name='sfm_deliveryDate_parsed' id='sfm_deliveryDate_parsed' tabindex='-1' style='display:none'/>
                  <div id='deliveryDate_image_container'>
                     <img id='deliveryDate_image' class='sfm_datepicker_icon' src='<c:url value="/resources/order/images/date-picker.gif"/>' width='20' height='20' alt='Click here to open the date picker'/>
                  </div>
               </div>
               <div id='deliveryState_container'>
                  <form:input path="deliveryState" type='text' name='deliveryState' id='deliveryState' size='20' class='sfm_textbox'/>
               </div>
               <div id='pickUpState_container'>
                  <form:input path="pickUpState" type='text' name='pickUpState' id='pickUpState' size='20' class='sfm_textbox'/>
               </div>
               <div id='label9_container' class='sfm_form_label'>
                  <label id='label9' for='pickUpPhoneNumber'>Phone</label>
               </div>
               <div id='label27_container' class='sfm_form_label'>
                  <label id='label27' for='deliveryTime'>Time</label>
               </div>
               <div id='label17_container' class='sfm_form_label'>
                  <label id='label17' for='deliveryPhoneNumber'>Phone</label>
               </div>
               <div id='pickUpTime_container'>
                  <form:input path="pickUpTime" type='text' name='pickUpTime' id='pickUpTime' value='12:00AM' size='20' class='sfm_textbox'/>
               </div>
               <div id='label26_container' class='sfm_form_label'>
                  <label id='label26' for='pickUpTime'>Time</label>
               </div>
               <div id='deliveryTime_container'>
                  <form:input path="deliveryTime" type='text' name='deliveryTime' id='deliveryTime' value='12:00AM' size='20' class='sfm_textbox'/>
               </div>
               <div id='pickUpPhoneNumber_container'>
                  <form:input path="pickUpPhoneNumber" type='text' name='pickUpPhoneNumber' id='pickUpPhoneNumber' size='20' class='sfm_textbox'/>
               </div>
               <div id='deliveryPhoneNumber_container'>
                  <form:input path="deliveryPhoneNumber" type='text' name='deliveryPhoneNumber' id='deliveryPhoneNumber' size='20' class='sfm_textbox'/>
               </div>
               <div id='label11_container' class='sfm_form_label'>
                  <label id='label11' for='pickUpComments'>Comments</label>
               </div>
               <div id='label19_container' class='sfm_form_label'>
                  <label id='label19' for='deliveryComments'>Comments</label>
               </div>
               <div id='pickUpComments_container'><form:textarea path="pickUpComments" name='pickUpComments' id='pickUpComments' class='sfm_textarea'></form:textarea></div>
               <div id='deliveryComments_container'><form:textarea path="deliveryComments" name='deliveryComments' id='deliveryComments' class='sfm_textarea'></form:textarea></div>
               <div id='label20_container' class='sfm_form_label'>
                  <label id='label20' for='caller'>Caller</label>
               </div>
               <div id='caller_container'>
                  <form:input path="caller" type='text' name='caller' id='caller' size='20' class='sfm_textbox'/>
               </div>
               <div id='label21_container' class='sfm_form_label'>
                  <label id='label21' for='reference'>Reference</label>
               </div>
               <div id='reference_container'>
                  <form:input path="reference" type='text' name='reference' id='reference' size='20' class='sfm_textbox'/>
               </div>
               <div id='label22_container' class='sfm_form_label'>
                  <label id='label22'>Service Type</label>
               </div>
               <div id='DropdownList_container'>
                  <form:select path="serviceType" name='DropdownList' id='DropdownList' size='1'>
                     <form:option value='Normal'>Normal</form:option>
                     <form:option value='Expedite'>Expedite</form:option>
                     <form:option value='Express'>Express</form:option>
                     <form:option value='Extra Care Handling'>Extra Care Handling</form:option>
                     <form:option value='Other'>Other</form:option>
                  </form:select>
               </div>
               <div id='label24_container' class='sfm_form_label'>
                  <label id='label24' for='noOfPieces'>No of Pieces</label>
               </div>
               <div id='noOfPieces_container'>
                  <form:input path="noOfPieces" type='text' name='noOfPieces' id='noOfPieces' size='20' class='sfm_textbox'/>
               </div>
               <div id='approxWeight_container'>
                  <form:input path="approxWeight" type='text' name='approxWeight' id='approxWeight' size='20' class='sfm_textbox'/>
               </div>
               <div id='label23_container' class='sfm_form_label'>
                  <label id='label23' for='approxWeight'>Approx Weight</label>
               </div>
               <div id='label25_container' class='sfm_form_label'>
                  <label id='label25' for='email'>Email</label>
               </div>
               <div id='email_container'>
                  <form:input path="email" type='text' name='email' id='email' size='20' class='sfm_textbox'/>
               </div>
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
   new sfm_calendar({input_id:"pickUpDate",image_id:"pickUpDate_image",form_id:"orderForm",mirror:"sfm_pickUpDate_parsed"})
   new sfm_calendar({input_id:"deliveryDate",image_id:"deliveryDate_image",form_id:"orderForm",mirror:"sfm_deliveryDate_parsed"})
   sfm_init_default_text("orderForm","pickUpTime","12:00AM");
   sfm_init_default_text("orderForm","deliveryTime","12:00AM");
   sfm_show_loading_on_formsubmit('orderForm','Submit');
});

// ]]>
      </script>
      <script type='text/javascript'>
// <![CDATA[
var orderFormValidator = new Validator("orderForm");
orderFormValidator.addValidation("sender",{required:true,message:"Please fill in sender"} );
orderFormValidator.addValidation("receiver",{required:true,message:"Please fill in receiver"} );
orderFormValidator.addValidation("deliveryStreet",{required:true,message:"Please fill in deliveryStreet"} );
orderFormValidator.addValidation("pickUpZipCode",{regexp:"^\\d{5}(-\\d{4})?$",message:"Please enter a valid input for pickUpZipCode"} );
orderFormValidator.addValidation("deliveryCity",{required:true,message:"Please fill in deliveryCity"} );
orderFormValidator.addValidation("deliveryZipCode",{required:true,message:"Please fill in deliveryZipCode"} );
orderFormValidator.addValidation("deliveryZipCode",{regexp:"^\\d{5}(-\\d{4})?$",message:"Please enter a valid input for deliveryZipCode"} );
orderFormValidator.addValidation("pickUpDate",{before_date:"Field(deliveryDate)",message:"The date pickUpDate should be before deliveryDate"} );
orderFormValidator.addValidation("deliveryDate",{after_date:"Field(pickUpDate)",message:"The date deliveryDate should be after pickUpDate"} );
orderFormValidator.addValidation("deliveryState",{required:true,message:"Please fill in deliveryState"} );
orderFormValidator.addValidation("pickUpTime",{regexp:"^(0?\\d|1[0-2])[:\\.][0-5]\\d\\s*(AM|PM|am|pm)?$",message:"Please enter a valid input for pickUpTime"} );
orderFormValidator.addValidation("deliveryTime",{regexp:"^(0?\\d|1[0-2])[:\\.][0-5]\\d\\s*(AM|PM|am|pm)?$",message:"Please enter a valid input for deliveryTime"} );
orderFormValidator.addValidation("pickUpPhoneNumber",{regexp:"(?:[\\(][0-9]{3}[\\)]|[0-9]{3})[-. ]?[0-9]{3}[-. ]?[0-9]{4}$",message:"Please enter a valid input for pickUpPhoneNumber"} );
orderFormValidator.addValidation("deliveryPhoneNumber",{regexp:"(?:[\\(][0-9]{3}[\\)]|[0-9]{3})[-. ]?[0-9]{3}[-. ]?[0-9]{4}$",message:"Please enter a valid input for deliveryPhoneNumber"} );
orderFormValidator.addValidation("deliveryPhoneNumber",{required:true,message:"Please fill in deliveryPhoneNumber"} );
orderFormValidator.addValidation("pickUpComments",{maxlen:"224",message:"The length of the input for pickUpComments should not exceed 224"} );
orderFormValidator.addValidation("deliveryComments",{maxlen:"224",message:"The length of the input for deliveryComments should not exceed 224"} );
orderFormValidator.addValidation("noOfPieces",{numeric:true,message:"The input for noOfPieces should be a valid numeric value"} );
orderFormValidator.addValidation("approxWeight",{regexp:"^(\\d)*(\\.(\\d)*)?$",message:"Please enter a valid input for approxWeight"} );
orderFormValidator.addValidation("email",{email:true,message:"The input for email should be a valid email value"} );

// ]]>
      </script>
   </body>
</html>