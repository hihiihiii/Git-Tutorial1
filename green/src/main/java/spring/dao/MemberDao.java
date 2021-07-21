package spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;

import spring.exception.AlreadyExistingMemberException;
import spring.exception.MemberNotFoundException;
import spring.vo.Green_member;

public class MemberDao {
	 
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
	      this.jdbcTemplate = new JdbcTemplate(dataSource);
	   }
	
	private MemberListRow memberListRow = new MemberListRow();


		public Green_member selectById(String user_id) { //아이디 하나검색해서 가져오겠다.
			
		System.out.println("***"+user_id);
		String sql="SELECT * FROM Green_member where user_id=?";
		List<Green_member> result = jdbcTemplate.query(sql,memberListRow,user_id);
		
		System.out.println("****"+result.size());
		
		//query( sql  ,  RowMapper객체  ,  매개값1, 매개값2...);		
		return result.isEmpty()?null:result.get(0);
	}
		
		
		public Green_member selectByEmail(String user_email) { //아이디 하나검색해서 가져오겠다.
			
			System.out.println("***"+user_email);
			String sql="SELECT * FROM green_member where user_email=?";
			List<Green_member> result = jdbcTemplate.query(sql,memberListRow,user_email);
			System.out.println("****"+result.size());
			
			//query( sql  ,  RowMapper객체  ,  매개값1, 매개값2...);		
			return result.isEmpty()?null:result.get(0);
		}
		
		public Green_member selectByEmailCheck(String user_email) { //아이디 하나검색해서 가져오겠다.
			
			System.out.println("***"+user_email);
			String sql="SELECT * FROM green_member where user_email=?";
			List<Green_member> result = jdbcTemplate.query(sql,memberListRow,user_email);
			System.out.println("****"+result.size());
			
			//query( sql  ,  RowMapper객체  ,  매개값1, 매개값2...);		
			return result.isEmpty()?null:result.get(0);
		}

	//인서트
	public void insert(Green_member newMember) {
		//jdbcTemplate의 update는 실행문
		jdbcTemplate.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement psmt = con.prepareStatement(
						"INSERT INTO Green_member VALUES(green_member_seq.nextval,?,?,?,?,?,?,?,?)");
				
				psmt.setString(1,newMember.getUser_id());
				psmt.setString(2,newMember.getAdmin_code());
				psmt.setString(3,newMember.getUser_pwd());
				psmt.setString(4,newMember.getUser_name());
				psmt.setInt(5,newMember.getUser_gender());
				psmt.setString(6,newMember.getUser_tel());
				psmt.setString(7,newMember.getUser_email());
				// 타임 스탬프는 숫자로 가져오는거기때문에 형변환을 시켜줘야한다. 형변환이 필수
				psmt.setTimestamp(8, new Timestamp(newMember.getUser_birthday().getTime()));
				
				
				return psmt;
			}
		});
		
	}

	//업데이트
	public void update(Green_member green_member) {
			//jdbc 템플릿 업데이트 
			System.out.println("re : "+green_member.getUser_pwd());
		jdbcTemplate.update("UPDATE Green_member set admin_code=?, user_pwd=?, user_name=?, user_tel=?, user_email=? WHERE user_id=?",
				green_member.getAdmin_code(),
				green_member.getUser_pwd(),
				green_member.getUser_name(),
				green_member.getUser_tel(),
				green_member.getUser_email(),
				green_member.getUser_id()
				);
	}
	
	public void delete(String user_id){//{
		
		Green_member member = selectById(user_id);
		try {
			if(member != null) {
				jdbcTemplate.update(
					"DELETE FROM Green_member WHERE User_id=?",
					user_id);
			}else {
				throw new MemberNotFoundException();
			}
		}catch(MemberNotFoundException e) {
			System.out.println("해당 이메일이 존재하지 않습니다.");
		}
	}
	
	
	//전체조회
	public List<Green_member> selectByRegdate(){
		
		List<Green_member> result = jdbcTemplate.query(
				"SELECT * FROM Green_member ORDER BY user_number ASC", 
				new RowMapper<Green_member>() {

					@Override
					public Green_member mapRow(ResultSet rs, int rowNum) throws SQLException {
//						System.out.println("***테스트***");
						Green_member Green_member = new Green_member(
								rs.getString("admin_code"),
								rs.getString("user_id"),
								rs.getString("user_pwd"),
								rs.getString("user_name"),
								rs.getInt("user_gender"),
								rs.getString("user_tel"),
								rs.getString("user_email"),
								rs.getDate("user_birthday")
								);
						Green_member.setUser_number(rs.getLong("user_number"));
						return Green_member;
					}
					
				});
		return result;
	}
	

	
	
	//--
	public void delete2(String user_id) {
        String sql = "DELETE FROM Green_member WHERE user_id=?";
        System.out.println("테스트 2");
        Green_member green_member = selectById(user_id);
        
        try {
           if(green_member != null) {
              jdbcTemplate.update(sql,user_id);         
           }else {
              throw new AlreadyExistingMemberException("");
           }
           
        }catch(AlreadyExistingMemberException e){
           System.out.println("해당 회원이 존재하지않습니다.");
        }
     }
	
	public void updateAdmin(String user_id) {
        String sql = "UPDATE Green_member set admin_code='admin' WHERE user_id=?";
        Green_member green_member = selectById(user_id);
        
        try {
           if(green_member != null) {
              jdbcTemplate.update(sql,user_id);         
           }else {
              throw new AlreadyExistingMemberException("");
           }
           
        }catch(AlreadyExistingMemberException e){
           System.out.println("해당 회원이 존재하지않습니다.");
        }
     }
	
	public void updateAdmin2(String user_id) {
        String sql = "UPDATE Green_member set admin_code = null WHERE user_id=?";
        Green_member green_member = selectById(user_id);
        
        try {
           if(green_member != null) {
              jdbcTemplate.update(sql,user_id);         
           }else {
              throw new AlreadyExistingMemberException("");
           }
           
        }catch(AlreadyExistingMemberException e){
           System.out.println("해당 회원이 존재하지않습니다.");
        }
     }
	
	public int count(String user_email){ 
		Integer count = jdbcTemplate.queryForObject( 
				"select count(*) from Green_member where user_email=?", Integer.class, user_email); 
		return count; 
		}

	
	
}
