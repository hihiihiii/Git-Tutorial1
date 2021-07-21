package spring.exception;

public class AlreadyExistingMemberEmailException extends RuntimeException{
	public AlreadyExistingMemberEmailException(String message) {
		super(message);
	}
}
