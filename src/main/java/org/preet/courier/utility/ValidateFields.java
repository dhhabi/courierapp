package org.preet.courier.utility;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.springframework.stereotype.Component;

@Component
public class ValidateFields {
	
	
	public static boolean isValidEmailAddress(String email) {
		   boolean result = true;
		   try {
		      InternetAddress emailAddr = new InternetAddress(email);
		      emailAddr.validate();
		   } catch (AddressException ex) {
		      result = false;
		   }
		   return result;
	}
	
	public static boolean isPhoneNumberValid(String phoneNumber){  
		boolean isValid = false;  
		  
		String expression = "^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$";  
		CharSequence inputStr = phoneNumber;  
		Pattern pattern = Pattern.compile(expression);  
		Matcher matcher = pattern.matcher(inputStr);  
		if(matcher.matches()){  
		isValid = true;  
		}  
		return isValid;  
		}
	
	public static boolean isNumericOrNull(String number){  
		if(number==null || number.equals(""))
			return true;
		boolean isValid = false;   
		String expression = "^[-+]?[0-9]*\\.?[0-9]+$";  
		CharSequence inputStr = number;  
		Pattern pattern = Pattern.compile(expression);  
		Matcher matcher = pattern.matcher(inputStr);  
		if(matcher.matches()){  
		isValid = true;  
		}  
		return isValid;  
		}  
	
	public static boolean isNumeric(String number){  
		boolean isValid = false;   
		String expression = "^[-+]?[0-9]*\\.?[0-9]+$";  
		CharSequence inputStr = number;  
		Pattern pattern = Pattern.compile(expression);  
		Matcher matcher = pattern.matcher(inputStr);  
		if(matcher.matches()){  
		isValid = true;  
		}  
		return isValid;  
		}  
	
	
}
