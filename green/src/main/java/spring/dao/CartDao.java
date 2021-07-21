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

import spring.exception.CartNotExistingException;
import spring.vo.Cart;
import spring.vo.Green_member;
import spring.vo.Product;


public class CartDao {
	private JdbcTemplate jdbctemplate;

	public void setDataSource(DataSource dataSource) {
		this.jdbctemplate = new JdbcTemplate(dataSource);
	}
	
	RowMapper<Cart> rowMapper = new RowMapper<Cart>() {

		@Override
		public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {
			Cart cart = new Cart(rs.getLong("user_number"), rs.getInt("product_number"), rs.getInt("cart_amount"));
			cart.setCart_number(rs.getInt("cart_number"));
			return cart;
		}};
		
		public List<Cart> cartALLList(long user_number){ //회원번호에 해당하는 장바구니 전체 조회
			String sql = "SELECT c.cart_number, m.user_number, p.product_number, c.cart_amount "
					+ "FROM green_member m, product p, cart c "
					+ "WHERE m.user_number = c.user_number and p.product_number = c.cart_number and m.user_number=?";  
			
			List<Cart> memberCartList = jdbctemplate.query(sql,rowMapper,user_number); 
			return memberCartList;
		}
		
		public List<Cart> selectAll(){
			String sql = "select * from cart order by cart_number";
			List<Cart> cartList = jdbctemplate.query(sql,rowMapper); 
			return cartList;
		}
		
		public Cart selectByCart_number(int cart_number) {
			String sql = "select * from cart where cart_number =?";
			List<Cart> selectByCartList = jdbctemplate.query(sql,rowMapper,cart_number);
			return selectByCartList.isEmpty() ? null :selectByCartList.get(0);
		}
		
		
	public void insertCart(Cart cart,long user_number , int product_number) { //장바구니 추가 
	
		KeyHolder keyHolder = new GeneratedKeyHolder();
		jdbctemplate.update(new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String sql = "insert into cart values(cart_seq.nextval,?,?,?)";
				PreparedStatement psmt = con.prepareStatement(sql, new String[] {"cart_number"});
				
				psmt.setLong(1, user_number);
				psmt.setInt(2, product_number);
				psmt.setInt(3, cart.getCart_amount());
				return psmt;
			}
		},keyHolder);
//		spring.dao.CartDao.insertCart(CartDao.java:63)
//		spring.service.CartService.regist(CartService.java:21)
//		spring.controller.CartController.cart(CartController.java:41)
		Number keyvalue = keyHolder.getKey();
		cart.setCart_number(keyvalue.intValue());
	}
	
	
	public void deleteCart(int cart_number) { // 장바구니 개별 삭제
		String sql ="delete from cart where cart_number=?";
		
		Cart cart = selectByCart_number(cart_number);
		
		try {
			if(cart != null) {
				jdbctemplate.update(sql,cart_number);
			}else {
				throw new CartNotExistingException();
			}
		}catch(CartNotExistingException e) {
			System.out.println("해당 카트번호는 존재하지 않습니다");
		}
		 
	}
	
	public void deleteAllCart(long user_number) { // 회원번호에 해당하는 장바구니 전체 삭제
		String sql = "delete from cart where user_number = (select user_number from green_member m "
				+ "WHERE cart.user_number = m.user_number and m.user_number=?)";
		
		List<Cart> memberCartList = cartALLList(user_number);
		
		try {
			if(memberCartList != null) {
				jdbctemplate.update(sql,user_number);
			}else {
				throw new CartNotExistingException();
			}
		}catch(CartNotExistingException e){
			
		}
	}
	
	public void updateCart(Cart cart) { // 장바구니 수량 수정
		String sql ="UPDATE cart SET cart_amount=? WHERE cart_number=?";
		jdbctemplate.update(sql,cart.getCart_amount(),cart.getCart_number());
	}
	
	public void totalMoney(long user_number) {
		String sql = "select nvl(sum(product_price*cart_amount),0) from cart c, product p, green_member m "
				+ "where c.product_number = p.product_number and c.user_number = m.user_number and m.user_number = ?";
		
		List<Cart> memberCartList = cartALLList(user_number);
		
		if(memberCartList != null) {
			jdbctemplate.update(sql,user_number);
		}else {
			throw new CartNotExistingException();
		}
		
	}
	
	public int countCart(long user_number, int product_number) {
		return 0;
	}

	
}
