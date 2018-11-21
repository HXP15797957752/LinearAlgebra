package cn.jxau.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.jxau.user.domain.Question;
import cn.jxau.user.domain.User;

public class UserDao{
		public void addUser(User form) {
			Connection con = null;
			PreparedStatement pstmt = null;
			try {
				
				con = JdbcUtils.getConnection();
				
				String sql = "INSERT INTO user VALUES(?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
	
				pstmt.setString(1, form.getId());
				pstmt.setString(2, form.getName());
				pstmt.setString(3, form.getSchool());
				pstmt.setString(4, form.getEmail());
				pstmt.setString(5, form.getPassword());
				
				pstmt.executeUpdate();
			} catch(Exception e) {
				throw new RuntimeException(e);
			} finally {
				try {
					if(pstmt != null) pstmt.close();
					if(con != null) con.close();
				} catch(SQLException e) {}
			}
		}

	public User findById(String id) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				con = JdbcUtils.getConnection();
				String sql = "SELECT * FROM user WHERE id=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs == null) {
					return null;
				}
				if(rs.next()) {
					
					User user = new User();
					user.setId(rs.getString("id"));
					user.setName(rs.getString("name"));
					user.setSchool(rs.getString("school"));
					user.setEmail(rs.getString("email"));
					user.setPassword(rs.getString("password"));
					return user;
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
	public List<User> findAll(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<User> list=new ArrayList<User>();
		try {
			con = JdbcUtils.getConnection();
			String sql = "SELECT * FROM user";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();			
			while(rs!=null&&rs.next()){
				User user = new User();
				user.setId(rs.getString("id"));
				user.setName(rs.getString("name"));
				user.setSchool(rs.getString("school"));
				user.setEmail(rs.getString("email"));
					list.add(user);
			}
			return list;
			
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

