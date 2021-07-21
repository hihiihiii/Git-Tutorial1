package spring.service;

import spring.dao.ProductDao;
import spring.exception.ProductNotExistingException;
import spring.vo.Product;


public class ProductDeleteService {
	private ProductDao productDao;

	public ProductDeleteService(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	
	public void delete(int product_number) {
		Product product = productDao.selectByProduct_number(product_number);
		
		if(product == null) {
			throw new ProductNotExistingException();
		}
		
		productDao.deleteProduct(product_number);
	}
}
