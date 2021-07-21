package spring.vo;

public class Reservation {

	private long reserv_index;
	private String reserv_id;
	private String reserv_email;
	private String reserv_type;
	private long reserv_price;
	private long reserv_person;
	private long reserv_size;
	private String reserv_bed;
	private String reserv_option;
	private String reserv_from;
	private String reserv_to;
	
	public void setReserv_id(String reserv_id) {
		this.reserv_id = reserv_id;
	}

	public Reservation(String reserv_id, String reserv_email, String reserv_type, long reserv_price, long reserv_person, long reserv_size,
			String reserv_bed, String reserv_option, String reserv_from, String reserv_to) {
		this.reserv_id = reserv_id;
		this.reserv_email = reserv_email;
		this.reserv_type = reserv_type;
		this.reserv_price = reserv_price;
		this.reserv_person = reserv_person;
		this.reserv_size = reserv_size;
		this.reserv_bed = reserv_bed;
		this.reserv_option = reserv_option;
		this.reserv_from = reserv_from;
		this.reserv_to = reserv_to;
	}
	


	public String getReserv_type() {
		return reserv_type;
	}

	public void setReserv_type(String reserv_type) {
		this.reserv_type = reserv_type;
	}

	public String getReserv_email() {
		return reserv_email;
	}

	public void setReserv_index(long reserv_index) {
		this.reserv_index = reserv_index;
	}

	public long getReserv_index() {
		return reserv_index;
	}

	public long getReserv_price() {
		return reserv_price;
	}

	public String getReserv_id() {
		return reserv_id;
	}

	public long getReserv_size() {
		return reserv_size;
	}

	public String getReserv_bed() {
		return reserv_bed;
	}

	public String getReserv_option() {
		return reserv_option;
	}

	public long getReserv_person() {
		return reserv_person;
	}

	public String getReserv_from() {
		return reserv_from;
	}

	public String getReserv_to() {
		return reserv_to;
	}

	public void setReserv_email(String reserv_email) {
		this.reserv_email = reserv_email;
	}


	public void setReserv_price(long reserv_price) {
		this.reserv_price = reserv_price;
	}

	public void setReserv_person(long reserv_person) {
		this.reserv_person = reserv_person;
	}

	public void setReserv_size(long reserv_size) {
		this.reserv_size = reserv_size;
	}

	public void setReserv_bed(String reserv_bed) {
		this.reserv_bed = reserv_bed;
	}

	public void setReserv_option(String reserv_option) {
		this.reserv_option = reserv_option;
	}

	public void setReserv_from(String reserv_from) {
		this.reserv_from = reserv_from;
	}

	public void setReserv_to(String reserv_to) {
		this.reserv_to = reserv_to;
	}


	
	
}
