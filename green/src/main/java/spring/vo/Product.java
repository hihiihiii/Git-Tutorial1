package spring.vo;

public class Product {
	private int product_number; 
	private String product_name;
	private int product_price;
	private String product_url;
	private String product_description;

	public Product(int product_number, String product_name, int product_price, String product_url, String product_description) {
		this.product_number = product_number;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_url = product_url;
		this.product_description = product_description;
	}
	
	public Product(String product_name, int product_price, String product_url, String product_description) {
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_url = product_url;
		this.product_description = product_description;
	}
	
	
	public void productUpdate(String newproduct_name, int newproduct_price, String newproduct_url, String newproduct_description ) {
		this.product_name = newproduct_name;
		this.product_price = newproduct_price;
		this.product_url = newproduct_url;
		this.product_description = newproduct_description;
	}
	
	public void delete(int product_number) {
		this.product_number = product_number;
	}
	
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_url() {
		return product_url;
	}
	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}
	public String getProduct_description() {
		return product_description;
	}
	public void setProduct_description(String product_description) {
		this.product_description = product_description;
	}

	
}
