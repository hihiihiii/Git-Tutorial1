package spring.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.vo.ProductRequest;
import spring.vo.RegisterRequest;

public class ProductRequestValidator implements Validator{
	private static final String priceExp = "^[0-9]*$";
	
	private Pattern pattern;
	
	public ProductRequestValidator() {
		pattern = Pattern.compile(priceExp);
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return RegisterRequest.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ProductRequest proReq = (ProductRequest)target;
		
		Matcher matcher = pattern.matcher(Integer.toString(proReq.getProduct_number()));		
		
		if(!matcher.matches()) {
			errors.reject("num");
		}
		          
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product_name", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product_price", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product_url", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product_description", "required");
		
	}

}
