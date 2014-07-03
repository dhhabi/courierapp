package org.preet.courier.controller;


import org.preet.courier.dao.DeliveryBoyDao;
import org.preet.courier.model.DeliveryBoy;
import org.preet.courier.validator.DeliveryBoyValidatior;
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
@RequestMapping("/deliveryBoy.admin")
public class DeliveryBoyControler {
	
	DeliveryBoyValidatior deliveryBoyValidator;
	
	private DeliveryBoyDao deliveryBoyDao;
	
	@Autowired
	public DeliveryBoyControler(DeliveryBoyValidatior deliveryBoyValidator){
		this.deliveryBoyValidator=deliveryBoyValidator;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String adminPage(ModelMap model) {

		DeliveryBoy deliveryBoy = new DeliveryBoy();
		deliveryBoy.setSex("M");	
		deliveryBoy.setUserRole("ROLE_USER");
		model.addAttribute("deliveryBoy",deliveryBoy);

		return "deliveryBoyForm";

	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processSubmit(
			@ModelAttribute("deliveryBoy") DeliveryBoy deliveryBoy,
			BindingResult result, SessionStatus status) {
		deliveryBoyValidator.validate(deliveryBoy, result);
		
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView();
			model.setViewName("deliveryBoyForm");
			return model;
		} else {
			boolean addStatus = getDeliveryBoyDao().addDeliveryBoy(deliveryBoy);
			String userStatus = "";
			if(addStatus)
				userStatus = "User Added Successfully !";
			else
				userStatus = "Somthing went wrong user not added !";
			ModelAndView model = new ModelAndView();
			model.addObject("addStatus", userStatus);
			model.setViewName("deliveryBoyForm");
			status.setComplete();
			//form success
			return model;
		}
	}

	public DeliveryBoyDao getDeliveryBoyDao() {
		return deliveryBoyDao;
	}

	@Autowired
	public void setDeliveryBoyDao(DeliveryBoyDao deliveryBoyDao) {
		this.deliveryBoyDao = deliveryBoyDao;
	}
	
	
}
