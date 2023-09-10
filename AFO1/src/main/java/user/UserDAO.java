package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bbs.Bbs;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/AFO_schema";
			String dbID = "root";
			String dbPassword = "12345678";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
//	로그인 메서드
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM USER WHERE userID =?"; // 특정 아이디의 비밀번호를 찾는 쿼리문
		try {
			pstmt = conn.prepareStatement(SQL); // 실행문에 쿼리문 장착(?)
			pstmt.setString(1, userID); // sql문을 받고 ?에 매개변수 userID삽입(setString에서 ?의 인덱스 1번부터 시작)
			rs = pstmt.executeQuery(); // 조회한 결과들을 ResultSet에 rs에 저장 (rs에는 이제 userPassword가 저장됨)
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				}
				else
					return 0; // 비밀번호 불일치 
			}
			return -1;	// 아이디가 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	
	// 회원가입 메서드
	public int join(User user) {
		String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	// 아이디로 유저 정보를 가져오는 함수
	public User getUser(String userID) { //하나의 글 내용을 불러오는 함수
		String SQL="SELECT * from USER where userID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID); //물음표
			rs = pstmt.executeQuery(); //select
			if(rs.next()) { //결과가 있다면
				User user = new User();
				user.setUserID(rs.getString(1)); //첫 번째 결과 값
				user.setUserPassword(rs.getString(2));
				user.setUserName(rs.getString(3));
				user.setUserGender(rs.getString(4));
				user.setUserEmail(rs.getString(5));
				return user; //6개의 항목을 user인스턴스에 넣어 반환한다.
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(String userID, String userPassword, String userName, String userGender, String userEmail ) {
		String SQL = "update user set userPassword = ?, userName = ?, userGender = ?, userEmail = ? where userID = ?"; // 특정한 아이디에 해당하는 제목과 내용을 바꿔준다. 아이디가 주요키이기 때문에 아이디는 변경할 수 없다.
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userPassword);
			pstmt.setString(2, userName);
			pstmt.setString(3, userGender);
			pstmt.setString(4, userEmail);
			pstmt.setString(5, userID);
			return pstmt.executeUpdate();		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	// 회원 아이디를 이용해서 회원 탈퇴를 해주는 함수
	public int delete(String userID) {
		String SQL="delete from user where userID = ?"; // 특정한 아이디에 해당하는 제목과 내용을 바꿔준다. 
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터베이스 오류
	}
	
}
