package spring.vo;

public class UpdateCommand {
	private int product_number;
	private String newproduct_name;
	private int newproduct_price;
	private String newproduct_url;
	private String newproduct_description;
	
	
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getNewproduct_name() {
		return newproduct_name;
	}
	public void setNewproduct_name(String newproduct_name) {
		this.newproduct_name = newproduct_name;
	}
	public int getNewproduct_price() {
		return newproduct_price;
	}
	public void setNewproduct_price(int newproduct_price) {
		this.newproduct_price = newproduct_price;
	}
	public String getNewproduct_url() {
		return newproduct_url;
	}
	public void setNewproduct_url(String newproduct_url) {
		this.newproduct_url = newproduct_url;
	}
	public String getNewproduct_description() {
		return newproduct_description;
	}
	public void setNewproduct_description(String newproduct_description) {
		this.newproduct_description = newproduct_description;
	}
	
	
}
