package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import model.MyUserAccount;

public class MyUserAccountMapper implements RowMapper<MyUserAccount>{

	@Override
	public MyUserAccount mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		String id=rs.getString("id");
		String email=rs.getString("email");
		String userName=rs.getString("username");
		String firstName=rs.getString("firstname");
		String lastName=rs.getString("lastname");
		String password=rs.getString("password");
		String role=rs.getString("role");
		
		 return new MyUserAccount(id, email,userName, firstName, //
	                lastName, password, //
	                role );
	}

}
