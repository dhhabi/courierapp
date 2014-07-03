package org.preet.courier.validator;

import org.preet.courier.dao.DeliveryBoyDao;
import org.preet.courier.model.DeliveryBoy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class DeliveryBoyValidatior implements Validator {

	
	private DeliveryBoyDao deliveryBoyDao;
	
	public DeliveryBoyDao getDeliveryBoyDao() {
		return deliveryBoyDao;
	}
	@Autowired
	public void setDeliveryBoyDao(DeliveryBoyDao deliveryBoyDao) {
		this.deliveryBoyDao = deliveryBoyDao;
	}

	@Override
	public boolean supports(Class<?> deliveryBoy) {
		return DeliveryBoy.class.isAssignableFrom(deliveryBoy);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName",
				"required.userName", "Field name is required.");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
				"required.password", "Field name is required.");
			
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword",
				"required.confirmPassword", "Field name is required.");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sex", 
				"required.sex", "Field name is required.");
		
		DeliveryBoy deliveryBoy = (DeliveryBoy)target;
		
		if(!(deliveryBoy.getPassword().equals(deliveryBoy.getConfirmPassword()))){
			errors.rejectValue("password", "notmatch.password");
		}
		
		if(getDeliveryBoyDao().checkUserAvailablity(deliveryBoy.getUserName()) > 0){
			errors.rejectValue("userName", "exist.userName");
		}
		
	}

}
