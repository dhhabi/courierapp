package org.preet.courier.controller;

import org.preet.courier.dao.OrderDao;
import org.preet.courier.model.MyOrder;
import org.preet.courier.model.TrackingInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tracking")
public class TrackingController {
	
	private OrderDao orderDao;
	
	public OrderDao getOrderDao() {
		return orderDao;
	}

	@Autowired
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String updateTrackingFormRequest(@RequestParam("orderId")long orderId,ModelMap model) {
		
		if(orderId==0){
			return "trackingInfoFirstPage";
		}
		MyOrder order = orderDao.getOrderById(orderId);
		model.addAttribute("order",order);		
		return "trackingInfoPage";

	}
}
