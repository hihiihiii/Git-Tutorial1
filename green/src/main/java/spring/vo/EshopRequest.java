package spring.vo;

public class EshopRequest {

	private Long eshop_number;
	private Long eshop_price;
	private String eshop_name;
	private Long eshop_amount;
	private String eshop_id;
	
	public String getEshop_id() {
		return eshop_id;
	}
	public void setEshop_id(String eshop_id) {
		this.eshop_id = eshop_id;
	}
	public Long getEshop_number() {
		return eshop_number;
	}
	public void setEshop_number(Long eshop_number) {
		this.eshop_number = eshop_number;
	}
	public Long getEshop_price() {
		return eshop_price;
	}
	public void setEshop_price(Long eshop_price) {
		this.eshop_price = eshop_price;
	}
	public String getEshop_name() {
		return eshop_name;
	}
	public void setEshop_name(String eshop_name) {
		this.eshop_name = eshop_name;
	}
	public Long getEshop_amount() {
		return eshop_amount;
	}
	public void setEshop_amount(Long eshop_amount) {
		this.eshop_amount = eshop_amount;
	}
	
	
}
