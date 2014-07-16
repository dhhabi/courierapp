package org.preet.courier.controller;

import java.util.List;

import org.preet.courier.dao.OrderDao;
import org.preet.courier.model.MyOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pendingOrders.user")
public class PendingOrdersController {
	
	private OrderDao orderDao;
	
	@RequestMapping(method = RequestMethod.GET)
	public String orderFormRequest(ModelMap model) {
		
		List<MyOrder> pendingOrdersList = orderDao.getPendingOrders();
		model.addAttribute("pendingOrdersList", pendingOrdersList);
		return "pendingOrders";

	}

	public OrderDao getOrderDao() {
		return orderDao;
	}

	@Autowired
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
}
