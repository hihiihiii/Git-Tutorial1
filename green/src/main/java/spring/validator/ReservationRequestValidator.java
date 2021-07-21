package spring.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


import spring.vo.ReservationRequest;

public class ReservationRequestValidator implements Validator{
	
	@Override
	public boolean supports(Class<?> clazz) {
		return ReservationRequest.class.isAssignableFrom(clazz);
	}
	// 파라미터로 전달받은 객체가 RegisterRequest로 변환 가능한지 확인
	// 스프링에서 자동 검사 진행
	@Override
	public void validate(Object target, Errors errors) {
		ReservationRequest resReq = (ReservationRequest)target;
		if (resReq.getReserv_to() == null || resReq.getReserv_to().trim().isEmpty()) {
			errors.rejectValue("reserv_to", "required");
		}
		
//						검사 대상 객체, 검사 결과 에러 코드
//	검사 대상 객체의 특정 프로퍼티나 상태등이 올바른지 검사하고
//	올바르지 않다면 Errors의  rejectValue() 메소드를 사용해서 에러코드를 저장

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "reserv_type", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "reserv_person", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "reserv_from", "required");
		

	}
	
}

