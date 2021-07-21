package spring.exception;

public class ReservationExistingException extends RuntimeException{

	public ReservationExistingException(String message) {
		super(message);
	}
}
