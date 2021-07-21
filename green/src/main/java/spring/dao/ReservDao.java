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

import spring.exception.ReservationExistingException;
import spring.vo.Reservation;

public class ReservDao {

	private JdbcTemplate jdbcTemplate;
	
	//Set메소드 주입
		public void setDataSource(DataSource dataSource) {
			this.jdbcTemplate = new JdbcTemplate(dataSource);
		}
		
		RowMapper<Reservation> rowMapper = //데이터(RowMapper인터페이스를 구현받은 객체); 
				new RowMapper<Reservation>() {//데이터(RowMapper인터페이스를 구현받은 익명 구현 객체); 
					@Override
					public Reservation mapRow(ResultSet rs, int rowNum) 
							throws SQLException {
						
						Reservation reservation = new Reservation(
								rs.getString("reserv_id"),
								rs.getString("reserv_email"),
								rs.getString("reserv_type"),
								rs.getLong("reserv_price"),
								rs.getLong("reserv_person"),
								rs.getLong("reserv_size"),
								rs.getString("reserv_bed"),
								rs.getString("reserv_option"),
								rs.getString("reserv_from"),
								rs.getString("reserv_to")								
								);
						reservation.setReserv_index(rs.getLong("reserv_index"));
						return reservation;
					}
				};
		
				public Reservation selectByReserv_index(Long reserv_index) {
					String sql = "SELECT * FROM reservation WHERE reserv_index=?";
					
					List<Reservation> result = jdbcTemplate.query(sql,rowMapper,reserv_index);//*****
					
					return result.isEmpty()?null:result.get(0);
				}
				
				public List<Reservation> selectByReserv_indexGuest(Long reserv_index) {
					String sql = "SELECT * FROM reservation WHERE reserv_index=?";
					
					List<Reservation> result = jdbcTemplate.query(sql,rowMapper,reserv_index);//*****
					
					return result;
				}
//		public Reservation selectByReserv_index(Long reserv_index) {
//			List<Reservation> result = jdbcTemplate.query("SELECT * FROM reservation WHERE reserv_index=?", new RowMapper<Reservation>() {
//				
//				@Override
//				public Reservation mapRow(ResultSet rs, int rowNum)  throws SQLException {
//					Reservation reservation = new Reservation(
//							rs.getString("reserv_id"),
//							rs.getString("reserv_kind"),
//							rs.getLong("reserv_price"),
//							rs.getLong("reserv_person"),
//							rs.getLong("reserv_size"),
//							rs.getString("reserv_bed"),
//							rs.getString("reserv_option"),
//							rs.getString("reserv_from"),
//							rs.getString("reserv_to")
//							);
//					reservation.setReserv_index(rs.getLong("reserv_index"));
//					
//					return reservation;
//					
//				}},reserv_index);
//			return result.isEmpty() ? null : result.get(0);
//		}

		public void insert(Reservation reservation) {
			KeyHolder keyHolder = new GeneratedKeyHolder();
			
			jdbcTemplate.update(// update(PreparedStatementCreator객체,keyHolder);
					new PreparedStatementCreator() {

						@Override
						public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
							PreparedStatement psmt = con.prepareStatement(
									"INSERT INTO reservation VALUES(reserv_seq.nextval,?,?,?,?,?,?,?,?,?,?)",
									new String[] {"reserv_index"});
							psmt.setString(1,reservation.getReserv_id());
							psmt.setString(2,reservation.getReserv_email());
							psmt.setString(3,reservation.getReserv_type());
							psmt.setLong(4,reservation.getReserv_price());
							psmt.setLong(5,reservation.getReserv_person());
							psmt.setLong(6,reservation.getReserv_size());
							psmt.setString(7,reservation.getReserv_bed());
							psmt.setString(8,reservation.getReserv_option());
							psmt.setString(9,reservation.getReserv_from());
							psmt.setString(10,reservation.getReserv_to());
							
							return psmt;
						}
					},keyHolder);
			Number keyValue = keyHolder.getKey();
			reservation.setReserv_index((keyValue.longValue()));
			
		}
		
		//public List<Reservation> selectAll() {
		//	List<Reservation> results = jdbcTemplate.query("SELECT * FROM reservation ORDER BY reserv_index ASC", new RowMapper<Reservation>() {
				// 첫번째 매개값 : 쿼리문 
				// 두번째 매개값 : 조회후 받아올 데이터를 담을 그릇 역할을 할 클래스(RowMapper)
		//	@Override
		//	public Reservation mapRow(ResultSet rs, int rowNum) throws SQLException {
		//		Reservation reservation = new Reservation(
		//				rs.getString("reserv_id"), rs.getString("reserv_kind"), rs.getLong("reserv_price"),
		//				rs.getLong("reserv_person"), rs.getLong("reserv_size"), rs.getString("reserv_bed"), 
		//							rs.getString("reserv_option"), rs.getString("reserv_from"), rs.getString("reserv_to"));
		//		
		//		reservation.setReserv_index(rs.getInt("reserv_index"));		
		//		return reservation;
		//				}
			
		//			});
		//	return results;
		//	}
		
		public void delete(Long reserv_index) {
			String sql = "DELETE FROM reservation WHERE reserv_index=?";
			System.out.println("테스트 2");
			Reservation reserv = selectByReserv_index(reserv_index);
			
			try {
				if(reserv != null) {
					jdbcTemplate.update(sql,reserv_index);			
				}else {
					throw new ReservationExistingException("");
				}
				
			}catch(ReservationExistingException e){
				System.out.println("해당 예약번호가 존재하지않습니다.");
			}
		}

		public List<Reservation> selectByReserv_email(String reserv_email){
			System.out.println("제대로 출력되나 테스트");
			List<Reservation> result = jdbcTemplate.query(
					"SELECT * FROM reservation WHERE reserv_email=?", rowMapper,reserv_email);
			return result;
		}
		
		public List<Reservation> selectByReserv_id1(String reserv_id){
			System.out.println("제대로 출력되나 테스트2");
			List<Reservation> result = jdbcTemplate.query(
					"SELECT * FROM reservation WHERE reserv_id=?", 
					rowMapper,reserv_id);
			return result;
		}
		
		public List<Reservation> selectAll() {
			List<Reservation> results = jdbcTemplate.query(
					"SELECT * FROM reservation ORDER BY reserv_index ASC",// 첫번째 매개값 : 쿼리문
												//두번째 매개값 : 조회후 받아올 데이터를 담을 그릇 역할을 할 클래스
					                                 //  RowMapper
					rowMapper);
				return results;
		}
}
