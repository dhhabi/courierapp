package org.preet.courier.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserWelcomeController {

	@RequestMapping(value = { "/userWelcomepage.user" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Priority Dispatch Service !");
		model.addObject("message", "This is default user page!");
		model.setViewName("userWelcome");
		
		return model;
	}
	
}
