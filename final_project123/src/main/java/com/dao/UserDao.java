package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
   
	
private  Connection conn;

	
	public UserDao(Connection conn) {
		super();
		this.conn = conn;
		
		
	}
	
	public boolean userRegistration(User u)
	{
		boolean f= false;
		
		try {
			String sql = "INSERT INTO user_dts ( fullName, email, password) VALUES ( ?, ?, ?)";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			
			int i = ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}
}
