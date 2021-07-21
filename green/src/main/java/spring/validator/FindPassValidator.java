package spring.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import spring.vo.Green_member;

public class FindPassValidator implements Validator{
	private Pattern pattern;
    private Matcher matcher;
    String regexp = "^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$"; //이메일 정규 표현식
    public FindPassValidator() {
        pattern = Pattern.compile(regexp);
    }

	@Override
	public boolean supports(Class<?> clazz) {
		
		return Green_member.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Green_member green_member = (Green_member)target;    
        //이메일이 올바른 형식인지 검사
        matcher = pattern.matcher(green_member.getUser_email());
        if(green_member.getUser_email() == null || green_member.getUser_email().trim().isEmpty())
            errors.rejectValue("user_email", "EmailRequired");
        else if(!matcher.matches()) //사용자가 입력한 이메일이 정규표현식에 매치 되지않는다면
            errors.rejectValue("user_email", "bad");



	}

}
