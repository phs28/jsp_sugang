package entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import exception.NullValueExample;
import vo.JoinVO;

public class JoinEntityimpl {
	 private Connection con;
	 private PreparedStatement pstmt;
	 private ResultSet rs;
	DataSource dataSource;
	 private String query;
		
	public JoinEntityimpl() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public void actionDo(JoinVO vo) throws NullValueExample {
		try {
			con = dataSource.getConnection();
			query = "insert into member(name, id, pw, sex, age, phone)" 
					+ "values(?, ?, ?, ?, ?, ?)";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getId());
			pstmt.setString(3, vo.getPw());
			pstmt.setString(4, vo.getSex());
			pstmt.setString(5, vo.getAge());
			pstmt.setString(6, vo.getPhone());
			
			int i = pstmt.executeUpdate();
			
			if(i != 1) {
				throw new NullValueExample("값이 없습니다.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void delete(String pw) {
		try {
			con = dataSource.getConnection();
			query = "delete from member where pw=?";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pw);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public JoinVO login(String id, String pw) {
		JoinVO vo = null;
		try {
			con = dataSource.getConnection();
			query = "select * from member where id=? and pw=?";
			 
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new JoinVO(rs.getString("name").trim(),
								rs.getString("id").trim(),
				  		        rs.getString("pw").trim(),
				  		        rs.getString("sex").trim(),
				  		        rs.getString("age").trim(),
				  		        rs.getString("phone").trim());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return vo;
	}
}
