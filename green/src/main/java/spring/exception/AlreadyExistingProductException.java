package spring.exception;

public class AlreadyExistingProductException extends RuntimeException {
	
	public AlreadyExistingProductException(String message) {
		super(message);
	}
}
