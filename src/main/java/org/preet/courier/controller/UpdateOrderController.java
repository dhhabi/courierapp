package org.preet.courier.controller;

import javax.servlet.http.HttpServletRequest;

import org.preet.courier.dao.OrderDao;
import org.preet.courier.model.MyOrder;
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
@RequestMapping("updateOrder.user")
public class UpdateOrderController {
	
	private OrderDao orderDao;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String updateOrderFormRequest(
			HttpServletRequest request,
			ModelMap model) {
		String orderIdString = request.getParameter("orderId");
		long orderId = Long.parseLong(orderIdString);
		MyOrder order = orderDao.getOrderById(orderId);
		model.addAttribute("order", order);
		return "updateOrderFormPage";

	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processUpdateOrderSubmit(
			@ModelAttribute("order") MyOrder order,
			BindingResult result, SessionStatus status) {
		
		ModelAndView model = new ModelAndView();
		boolean updateResult = orderDao.updateOrder(order);
		if(updateResult){
			model.addObject("status","Order Updated Successfullly");
			model.addObject("orderId",order.getId());
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
