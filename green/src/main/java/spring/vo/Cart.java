package spring.vo;

public class Cart {
	 private int cart_number;
	 private long user_number;
	 private int product_number;
	 private int cart_amount;
	
	   
	public Cart(long user_number, int product_number, int cart_amount) {
		this.user_number = user_number;
		this.product_number = product_number;
		this.cart_amount = cart_amount;
	}

	public void cartUpdate(int newcart_amount) {
		this.cart_amount = newcart_amount;
	}
	
	public int getCart_number() {
		return cart_number;
	}

	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}

	
	public long getUser_number() {
		return user_number;
	}

	public void setUser_number(long user_number) {
		this.user_number = user_number;
	}

	public int getProduct_number() {
		return product_number;
	}

	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}

	public int getCart_amount() {
		return cart_amount;
	}


	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}
	
	
	
	

	   
}
