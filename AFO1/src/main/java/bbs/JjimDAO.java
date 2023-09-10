package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class JjimDAO {

	private Connection conn;	// db에 접근하는 객체
	private ResultSet rs;
	
	public JjimDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/AFO_schema";
			String dbID = "root";
			String dbPassword = "12345678";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Bbs> getList(String userID, int pageNumber) { // 인공지능이 수정해준것. 문제 생기면 지울것.
	    String SQL = "SELECT * FROM BBS WHERE bbsID in (SELECT bbsID FROM jjim WHERE userID = ?) ORDER BY bbsID DESC LIMIT 10";
	    ArrayList<Bbs> list = new ArrayList<Bbs>();
	    try {
	        PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, userID);
	        rs = pstmt.executeQuery();
	        while (rs.next()) {
	            Bbs bbs = new Bbs();
	            
	            bbs.setBbsID(rs.getInt("bbsID"));
	            bbs.setBbsTitle(rs.getString("bbsTitle"));
	            bbs.setUserID(rs.getString("userID"));
	            bbs.setBbsDate(rs.getString("bbsDate"));
	            bbs.setBbsContent(rs.getString("bbsContent"));
	            bbs.setBbsAvailable(rs.getInt("bbsAvailable"));
	            bbs.setBbsCount(rs.getInt("bbsCount"));
	            list.add(bbs);
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}

	
	public int write(String userID, int bbsID) {
		String SQL = "INSERT INTO jjim VALUES(?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			pstmt.setString(2, userID);
			pstmt.executeUpdate();
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public ArrayList<Jjim> getJjim(String userID, int bbsID) {
		String SQL = "SELECT * FROM jjim WHERE userID = ? AND bbsID = ?";
		ArrayList<Jjim> list = new ArrayList<Jjim>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			pstmt.setInt(2,  bbsID);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Jjim jjim = new Jjim();
				jjim.setBbsID(rs.getInt(1));
				jjim.setUserID(rs.getString(2));
				list.add(jjim);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int delete(String userID,int bbsID) {
		String SQL = "DELETE FROM jjim WHERE bbsID = ? AND userID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			pstmt.setString(2, userID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}