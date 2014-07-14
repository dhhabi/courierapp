package org.preet.courier.controller;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.preet.courier.dao.OrderDao;
import org.preet.courier.model.MyOrder;
import org.preet.courier.model.TrackingInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/updateTrackingInfo.user")
public class UpdateTrackingInfoController {
	
	private OrderDao orderDao;

	@RequestMapping(method = RequestMethod.GET)
	public String updateTrackingFormRequest(@RequestParam("orderId")long orderId,ModelMap model) {
		
		if(orderId==0){
			return "updateTrackingInfoPageFirst";
		}
		MyOrder order = orderDao.getOrderById(orderId);
		TrackingInfo trackingInfo = new TrackingInfo("", "");
		model.addAttribute("order",order);
		model.addAttribute("trackingInfo",trackingInfo);
		
		return "updateTrackingInfoFormPage";

	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processUpdateTrackingInfoSubmit(
			HttpServletRequest request,
			@ModelAttribute("trackingInfo") TrackingInfo trackingInfo,
			BindingResult result, SessionStatus status) {
		ModelAndView model = new ModelAndView();
		String orderIdString = request.getParameter("orderId");
		String change = "";
		Date newDeliveryDate = new Date();
		
		long orderId = Long.parseLong(orderIdString);
		MyOrder order = orderDao.getOrderById(orderId);
		order.getTrackingInfo().add(trackingInfo);
		
		if(trackingInfo.getInfoType().equals("Delivery"))
			order.setDeliveryComplete(true);
		
		if (request.getParameterMap().containsKey("change")) {
            change = request.getParameter("change");
        }
		
		if(change.equals("yes")){
			String pattern = "MM/dd/yyyy";
		    SimpleDateFormat format = new SimpleDateFormat(pattern);
		    try {
				newDeliveryDate = format.parse(request.getParameter("DatePicker"));
				order.setDeliveryDate(newDeliveryDate);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		    String newDeliveryTime = request.getParameter("deliveryTime");
		    	order.setDeliveryTime(newDeliveryTime);
		}
		
		if(orderDao.updateOrder(order)){
			model.setViewName("userWelcome");
			model.addObject("status","Information updated for tracking ID :"+orderId);
		}else{
			model.setViewName("userWelcome");
			model.addObject("status","Somthing went wrong please try again");
		}		
		return model;
	}
	
	

	public OrderDao getOrderDao() {
		return orderDao;
	}

	@Autowired
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
}
