package spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import spring.exception.ProductNotExistingException;
import spring.exception.ReservationExistingException;
import spring.vo.Product;
import spring.vo.Reservation;
import spring.vo.Eshop;

public class ProductDao {
	
	private JdbcTemplate jdbctemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbctemplate = new JdbcTemplate(dataSource);
	}
	
	 RowMapper<Product> rowMapper = new RowMapper<Product>() {

		@Override
		public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
			Product product = new Product(rs.getString("product_name"),rs.getInt("product_price"),
					rs.getString("product_url"),rs.getString("product_description"));
			
			product.setProduct_number(rs.getInt("product_number"));
			return product;
		}};
	
	
	public Product selectByProduct_number(int product_number) {
		String sql = "select * from product where product_number=?";
		List<Product> productList = jdbctemplate.query(sql,rowMapper,product_number); 
		return productList.isEmpty() ? null : productList.get(0);
	}
	
	
	
	public void insertProduct(Product product) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbctemplate.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String sql = "insert into product values(green_product_seq.nextval,?,?,?,?)";
				
				PreparedStatement psmt = con.prepareStatement(sql, new String[] {"product_number"});
				
				psmt.setString(1, product.getProduct_name());
				psmt.setInt(2, product.getProduct_price());
				psmt.setString(3, product.getProduct_url());
				psmt.setString(4, product.getProduct_description());
				
				return psmt;
			}
		},keyHolder);
		Number keyvalue = keyHolder.getKey();
		product.setProduct_number(keyvalue.intValue());
	}
	
	public void updateProduct(Product product) {
		String sql ="UPDATE product SET product_name=?, product_price=?, "
				+ "product_url=?, product_description=? WHERE product_number=?";
		
		jdbctemplate.update(sql,product.getProduct_name(),product.getProduct_price(),
				product.getProduct_url(),product.getProduct_description(),product.getProduct_number());
	}
	
	public List<Product> selectAll(){
		String sql = "select * from product order by product_number";
		List<Product> productList = jdbctemplate.query(sql,rowMapper); 
		return productList;
	}
	
	
	
	public void deleteProduct(int product_number) {
		String sql = "delete from product where product_number=?";
		
		Product product = selectByProduct_number(product_number);
		
		try {
			if(product != null) {
				jdbctemplate.update(sql,product_number);
			}else {
				throw new ProductNotExistingException();
			}
		}catch(ProductNotExistingException e) {
			System.out.println("해당 상품번호는 존재하지 않습니다");
		}
	}
	
	public List<Product> selectAllbyproductNum(long user_number){
		String sql = "SELECT * FROM green_member m, product p, cart c "
				+ "WHERE m.user_number = c.user_number and p.product_number = c.cart_number and m.user_number=?";  
		List<Product> productList = jdbctemplate.query(sql,rowMapper,user_number); 
		return productList;
	}
	
	//EShop
	
	public Eshop selectByEshopNumber(Long eshop_number){
		System.out.println("제대로 출력되나 테스트");
		List<Eshop> result = jdbctemplate.query(
				"SELECT * FROM eshop WHERE eshop_number=?", rowMapperEshop,eshop_number);
		return result.isEmpty()?null:result.get(0);
	}
	public List<Eshop> selectEshopAll() {
		List<Eshop> results = jdbctemplate.query(
				"SELECT * FROM eshop ORDER BY eshop_number ASC",// 첫번째 매개값 : 쿼리문
											//두번째 매개값 : 조회후 받아올 데이터를 담을 그릇 역할을 할 클래스
				                                 //  RowMapper
				rowMapperEshop);
			return results;
	}
	
	public void insertEshop(Eshop eshop) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		System.out.println("테스트 아이디3"+eshop.getEshop_id());
		jdbctemplate.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String sql = "insert into eshop values(eshop_seq.nextval,?,?,?,?)";
				
				PreparedStatement psmt = con.prepareStatement(sql, new String[] {"eshop_number"});

				psmt.setLong(1, eshop.getEshop_price());
				psmt.setString(2, eshop.getEshop_name());
				psmt.setLong(3, eshop.getEshop_amount());
				psmt.setString(4, eshop.getEshop_id());
				
				return psmt;
			}
		},keyHolder);
		Number keyvalue = keyHolder.getKey();
		eshop.setEshop_number(keyvalue.longValue());
	}
	
	public List<Eshop> selectByEshop_id(String eshop_id){
		System.out.println("제대로 출력되나 테스트2");
		List<Eshop> result = jdbctemplate.query(
				"SELECT * FROM eshop WHERE eshop_id=?", 
				rowMapperEshop,eshop_id);
		return result;
	}
	
	RowMapper<Eshop> rowMapperEshop = //데이터(RowMapper인터페이스를 구현받은 객체); 
			new RowMapper<Eshop>() {//데이터(RowMapper인터페이스를 구현받은 익명 구현 객체); 
				@Override
				public Eshop mapRow(ResultSet rs, int rowNum) 
						throws SQLException {
					
					Eshop eshop = new Eshop(
							rs.getLong("eshop_price"),
							rs.getString("eshop_name"),
							rs.getLong("eshop_amount"),
							rs.getString("eshop_id")								
							);
					eshop.setEshop_number(rs.getLong("eshop_number"));
					return eshop;
				}
			};
			
			public void deleteEshop(Long eshop_number) {
				String sql = "DELETE FROM eshop WHERE eshop_number=?";
				System.out.println("테스트 2");
				Eshop eshop = selectByEshopNumber(eshop_number);
				
				try {
					if(eshop != null) {
						jdbctemplate.update(sql,eshop_number);			
					}else {
						throw new ReservationExistingException("");
					}
					
				}catch(ReservationExistingException e){
					System.out.println("해당 예약번호가 존재하지않습니다.");
				}
			}
}