package spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import spring.vo.Green_member;

public class MemberListRow implements RowMapper<Green_member>{

		@Override
				public Green_member mapRow(ResultSet rs, int rowNum) throws SQLException {
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
			
	}


