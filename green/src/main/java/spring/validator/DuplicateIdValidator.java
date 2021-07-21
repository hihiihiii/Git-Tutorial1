package spring.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.dao.MemberDao;
import spring.vo.RegisterRequest;

public class DuplicateIdValidator implements Validator{
	private MemberDao memberDao; 
	@Override
	public boolean supports(Class<?> clazz) {
		return RegisterRequest.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		RegisterRequest regReq = (RegisterRequest)target;
		
		
		
	}

}
