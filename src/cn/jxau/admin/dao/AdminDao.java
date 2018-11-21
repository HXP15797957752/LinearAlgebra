package cn.jxau.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.jax.admin.domain.Admin;
import cn.jxau.user.dao.JdbcUtils;
import cn.jxau.user.domain.User;

public class AdminDao{
		
	public Admin findById(String id) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				con = JdbcUtils.getConnection();
				String sql = "SELECT * FROM admin WHERE id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs == null) {
					return null;
				}
				if(rs.next()) {
					
					Admin admin = new Admin();
					admin.setId(rs.getString("id"));
					
					admin.setPassword(rs.getString("password"));
					return admin;
				} else {
					return null;
				}
			} catch(Exception e) {
				throw new RuntimeException(e);
			} finally {
				try {
					if(pstmt != null) pstmt.close();
					if(con != null) con.close();
				} catch(SQLException e) {}
			}
		}
	public int deleteById(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rs;
	
		try {
			con = JdbcUtils.getConnection();
			String sql = "DELETE  FROM user where id='"+id+"'";
			pstmt = con.prepareStatement(sql);	
			rs = pstmt.executeUpdate();				
			return rs;
		} catch(Exception e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch(SQLException e) {}
		}
	}

	public void update(String id,String name, String school, String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rs;
		try {
			con = JdbcUtils.getConnection();
			String sql = "Update  user set name='"+name+"' , school='"+school+"' , email='"+email+"' where id='"+id+"'";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeUpdate();			
			
			
		} catch(Exception e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch(SQLException e) {}
		}
	
	}
}




