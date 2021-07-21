package spring.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.vo.AuthInfo;


public class AdminValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return AuthInfo.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user_id", "inputId");
		
	}

}
