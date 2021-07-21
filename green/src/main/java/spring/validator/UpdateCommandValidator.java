package spring.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.vo.ChangePwdCommand;

public class UpdateCommandValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		
		return ChangePwdCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newproduct_name", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newproduct_price", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newproduct_url", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "newproduct_description", "required");
	}
	
}
