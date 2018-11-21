package cn.jxau.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.jxau.user.domain.Question;
import cn.jxau.user.domain.User;

public class QuestionDao {
	public List<Question> findAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Question> list=new ArrayList<Question>();
		try {
			con = JdbcUtils.getConnection();
			String sql = "SELECT * FROM question order by time desc";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();			
			while(rs!=null&&rs.next()){
					Question question = new Question();
					question.setName(rs.getString("name"));
					question.setQuestion(rs.getString("question"));
					question.setSort(rs.getString("sort"));
					question.setTime(rs.getString("time"));
					list.add(question);
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

	public void add(Question form) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			
			con = JdbcUtils.getConnection();
			
			String sql = "INSERT INTO question VALUES(?,?,?,?)";
			pstmt = con.prepareStatement(sql);

			  pstmt.setString(1, form.getName());
			pstmt.setString(2, form.getQuestion());
			pstmt.setString(3, form.getSort());
			pstmt.setString(4, form.getTime());
			
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
	
	public void delete(String name){
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			
			con = JdbcUtils.getConnection();			
			String sql = "delete from question where name='"+name+"'";
			pstmt = con.prepareStatement(sql);		
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
	
}
