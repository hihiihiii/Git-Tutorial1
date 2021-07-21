package spring.validator;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.dao.MemberDao;
import spring.vo.Green_member;
import spring.vo.RegisterRequest;

public class RegisterRequestValidator implements Validator{

	private Pattern pattern;
    private Matcher matcher;
    String regexp = "^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$"; //이메일 정규 표현식
    public RegisterRequestValidator() {
        pattern = Pattern.compile(regexp);
    }
   
	
	@Override
	public boolean supports(Class<?> clazz) {
		
		//파라미터로 전달받은 객체가 RegisterRequest로 변환 가능한지 확인
		// 스프링에서 자동 검사 진행
		return RegisterRequest.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
//     						 검사 대상 객체, 	검사 결과 에러 코드
//  검사 대상 객체의 특정 프로퍼티나 상태등이 올바른지 검사하고
//  올바르지 않다면 Errors의 rejectValue() 메서드를 사용해서 에러코드를 저장

	RegisterRequest regReq = (RegisterRequest)target;
	
	//만약 유저 아이디가 널 이거나 유저 아이디 공백이면 에러코드를 내보내라.
//		if(regReq.getUser_id()==null || regReq.getUser_id().trim().isEmpty()) {
//		errors.rejectValue("user_id","required");
//	}
	
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user_name", "required");
	// ValidationUtils객체는 자주 사용하는 객체의 값 검증 코드를 보다 간결하게 만들어준다.
	
	
	
	//비밀번호가 비었거나 비멀번호 중복 사태.
	if(!regReq.getUser_pwd().isEmpty()) {
		if(!regReq.isPasswordEqualToConfirmPassword()) { 
			errors.rejectValue("confirmPassword", "nomatch");
		}
	}
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user_id", "required");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "user_tel", "required");
	// ValidationUtils객체는 자주 사용하는 객체의 값 검증 코드를 보다 간결하게 만들어준다.
	// 비밀번호 가 다를때 .
	ValidationUtils.rejectIfEmpty(errors, "user_pwd", "required");
	ValidationUtils.rejectIfEmpty(errors, "confirmPassword", "required");
	
	
	// 이메일 정규식 추가 .
	matcher = pattern.matcher(regReq.getUser_email());
    if(regReq.getUser_email() == null || regReq.getUser_email().trim().isEmpty()) {
        errors.rejectValue("user_email", "EmailRequired");
    }
    else if(!matcher.matches()) //사용자가 입력한 이메일이 정규표현식에 매치 되지않는다면
        errors.rejectValue("user_email", "bad");
    
    
	}

}
