package spring.service;

import org.springframework.transaction.annotation.Transactional;

import spring.dao.ProductDao;
import spring.exception.MemberNotFoundException;
import spring.vo.Product;

public class ProductUpdateService {
	private ProductDao productDao;

	public ProductUpdateService(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	
	public void update(int product_number, String newproduct_name, int newproduct_price, String newproduct_url, String newproduct_description) {
		Product product = productDao.selectByProduct_number(product_number);
		System.out.println("테스트2");
		if(product ==null) {
			throw new MemberNotFoundException();
		}
		
		product.productUpdate(newproduct_name, newproduct_price, newproduct_url, newproduct_description);
		
		productDao.updateProduct(product);
	}
}
