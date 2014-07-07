package org.preet.courier.controller;

import org.preet.courier.dao.DeliveryBoyDao;
import org.preet.courier.model.DeliveryBoy;
import org.preet.courier.validator.DeleteDeliveryBoyValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("enableDeliveryBoy.admin")
public class EnableDeliveryBoyController {

DeliveryBoyDao deliveryBoyDao;
	
	public DeliveryBoyDao getDeliveryBoyDao() {
		return deliveryBoyDao;
	}

	@Autowired
	public void setDeliveryBoyDao(DeliveryBoyDao deliveryBoyDao) {
		this.deliveryBoyDao = deliveryBoyDao;
	}

	DeleteDeliveryBoyValidator deleteDeliveryBoyValidator;
	
	public DeleteDeliveryBoyValidator getDeleteDeliveryBoyValidator() {
		return deleteDeliveryBoyValidator;
	}

	@Autowired
	public void setDeleteDeliveryBoyValidator(
			DeleteDeliveryBoyValidator deleteDeliveryBoyValidator) {
		this.deleteDeliveryBoyValidator = deleteDeliveryBoyValidator;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String adminPage(ModelMap model) {

		DeliveryBoy deliveryBoy = new DeliveryBoy();	
		model.addAttribute("enableDeliveryBoy",deliveryBoy);

		return "enableDeliveryBoy";

	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processSubmit(
			@ModelAttribute("enableDeliveryBoy") DeliveryBoy deliveryBoy,
			BindingResult result, SessionStatus status) {
		deleteDeliveryBoyValidator.validate(deliveryBoy, result);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); //get logged in username
		
	    if(name.equals(deliveryBoy.getUserName())){
	    	ModelAndView model = new ModelAndView();
			model.setViewName("enableDeliveryBoy");
			model.addObject("addStatus", "You can't enable yourself");
			return model;
			
	    }else if (result.hasErrors()) {
			ModelAndView model = new ModelAndView();
			model.setViewName("enableDeliveryBoy");
			return model;
			
		} else {
			boolean addStatus = getDeliveryBoyDao().enableDisableDeliveryBoy(deliveryBoy.getUserName(), true);
			String userStatus = "";
			if(addStatus)
				userStatus = "User Enabled Successfully !";
			else
				userStatus = "Somthing went wrong !";
			ModelAndView model = new ModelAndView();
			model.addObject("addStatus", userStatus);
			model.setViewName("enableDeliveryBoy");
			status.setComplete();
			//form success
			return model;
		}
	}
	
}
