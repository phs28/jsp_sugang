package entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.SuGangVO;

public class SuGangEntityimpl {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	DataSource dataSource;
	private String query;
	
	
	public SuGangEntityimpl(){
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (NamingException e) {
			e.printStackTrace();
		}
				
	}
	
	public void insert(SuGangVO vo) {
		try {
			con = dataSource.getConnection();
			query = "insert into sugang(stnum, grade, subject1, subject2, subject3, subject4, subject5)"
					+ "values(?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, vo.getStnum());
			pstmt.setString(2, vo.getGrade());
			pstmt.setString(3, vo.getSubject1());
			pstmt.setString(4, vo.getSubject2());
			pstmt.setString(5, vo.getSubject3());
			pstmt.setString(6, vo.getSubject4());
			pstmt.setString(7, vo.getSubject5());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	public SuGangVO select(String stnum) {
		SuGangVO vo = null;
		
		try {
			con = dataSource.getConnection();
			query = "select * from sugang where stnum=?";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, stnum);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String Stnum = rs.getString("stnum");
				String grade = rs.getString("grade");
				String subject1 = rs.getString("subject1");
				String subject2 = rs.getString("subject2");
				String subject3 = rs.getString("subject3");
				String subject4 = rs.getString("subject4");
				String subject5 = rs.getString("subject5");
				
				vo = new SuGangVO(Stnum, grade, subject1, subject2, subject3, subject4, subject5);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				try	{
					if(rs != null) {
						rs.close();
					}
					if(con != null) {
						con.close();
					}
					if(pstmt != null) {
						pstmt.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		return vo;
	}
	
	public void update(SuGangVO vo) {
		try {
			con = dataSource.getConnection();
			query = "update sugang set grade=?, subject1=?, subject2=?, subject3=?, subject4=?, subject5=? where stnum=?";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, vo.getGrade());
			pstmt.setString(2, vo.getSubject1());
			pstmt.setString(3, vo.getSubject2());
			pstmt.setString(4, vo.getSubject3());
			pstmt.setString(5, vo.getSubject4());
			pstmt.setString(6, vo.getSubject5());
			pstmt.setString(7, vo.getStnum());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void delete(String stnum) {
		try {
			con = dataSource.getConnection();
			query = "delete from sugang where stnum=?";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, stnum);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
