package org.preet.courier.controller;


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
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/orderForm.user")
public class OrderController {
	
	private OrderDao orderDao;
	
	@RequestMapping(method = RequestMethod.GET)
	public String orderFormRequest(ModelMap model) {
		MyOrder order = new MyOrder();
		model.addAttribute("order", order);
		return "updateOrderFormPage";

	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processOrderSubmit(
			@ModelAttribute("order") MyOrder order,
			BindingResult result, SessionStatus status) {
			
			ModelAndView model = new ModelAndView();
			order.getTrackingInfo().add(new TrackingInfo("Order Initialized !", ""));
			long orderID = orderDao.addOrder(order);
			if(orderID!=0){
				model.addObject("status","Order Placed Successfullly");
				model.addObject("orderId",orderID);
				model.addObject("order",order);
			}else{
				model.addObject("status","Something went wrong go back and please try again");
			}
			model.setViewName("orderSubmitSuccess");
			status.setComplete();
			//form success
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
