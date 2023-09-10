package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {
	private Connection conn;
	private ResultSet rs; 
	
	public BbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/AFO_schema";
			String dbID = "root";
			String dbPassword = "12345678";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getDate() {
		String SQL = "SELECT NOW()"; // mysql에서 현재 시각을 년도에서 부터 초단위까지 알려주는 쿼리문
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) { // 결과가 1개인 경우여서 while이 아닌 if 사용
				return rs.getString(1); // "2023-02-07 20:23:22" 를 하나의 컬럼(열)로 반환
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; // DB 오류 
	}
	
	public int getNext() { // 가장 마지막으로 작성한 글의 bbsID값 가져오기
		String SQL = "SELECT bbsID FROM BBS ORDER BY bbsID DESC"; // 게시글 번호는 1번부터 하나씩 늘어나기 때문에 마지막 글에 1을 더한값이 그 다음글의 번호가 될것.
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1; // 나온 결과에 +1을 하여 다음글에 넣어준다.
			}
			return 1; // 기존에 쓰인 글이 하나도 없어서 현재가 첫 번째 게시물인 경우. 현재의 다음 글 번호는 1번이 된다.
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 (게시글 번호로 적절하지 않은 -1이 나오면서 개발자가 오류 발생을 파악)
	}
	
	// CREATE
	public int write(String bbsTitle, String userID, String bbsContent, int bbsCount, String bbsType) {
		String SQL = "INSERT INTO BBS VALUES (?, ?, ?, ?, ?, ?, ?, ?)"; // bbsID, bbsTitle, userID, bbsDate, bbsContent, bbsAvailable, bbsCount, bbsType
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1, getNext()); // 다음번에 쓰이게될 게시글 번호.
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate()); // 현재 시각을 가져옴
			pstmt.setString(5, bbsContent); // 글 내용(2048자 제한)
			pstmt.setInt(6, 1);
			pstmt.setInt(7, bbsCount);
			pstmt.setString(8, bbsType);
			return pstmt.executeUpdate(); // 잘 되었으면 0이상의 값 반환
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류
	}
	
	// READ
	// pageNumber에 해당하는 게시글 목록 DB에서 가져오기
	public ArrayList<Bbs> getList(int pageNumber){ // bbsID가 특정 숫자보다 작을때, 삭제가 되지 않아서 bbsAvailable = 1인 글들만, 위에서 10개 까지만 가져오기 
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10"; // 특정 페이지에 따른 총 10개의 게시글 가져오기 
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10); // getNext()는 다음으로 작성될 글의 번호를 의미,  글이 5개일때 getNext()는 6 pageNumber는 5개니까 1 결과적으로 6이 pstmt에 set(담김), 6보다 작은 수의 bbsID가 출력되므로 5부터 출력된다.
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
	            bbs.setBbsType(rs.getString("bbsType"));
	            list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; // pageNumber에 알맞은 list를 반환
	}
	
	// READ
	// pageNumber에 해당하는 게시글 목록 DB에서 가져오기
	public ArrayList<Bbs> getList_movie(int pageNumber){ // bbsID가 특정 숫자보다 작을때, 삭제가 되지 않아서 bbsAvailable = 1인 글들만, 위에서 10개 까지만 가져오기 
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 AND bbsType = 'movie' ORDER BY bbsID DESC LIMIT 10";
		
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10); // getNext()는 다음으로 작성될 글의 번호를 의미,  글이 5개일때 getNext()는 6 pageNumber는 5개니까 1 결과적으로 6이 pstmt에 set(담김), 6보다 작은 수의 bbsID가 출력되므로 5부터 출력된다.
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
	            bbs.setBbsType(rs.getString("bbsType"));
	            list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; // pageNumber에 알맞은 list를 반환
	}	
	
	// READ
	// pageNumber에 해당하는 게시글 목록 DB에서 가져오기
	public ArrayList<Bbs> getList_drama(int pageNumber){ // bbsID가 특정 숫자보다 작을때, 삭제가 되지 않아서 bbsAvailable = 1인 글들만, 위에서 10개 까지만 가져오기 
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 AND bbsType = 'drama' ORDER BY bbsID DESC LIMIT 10";
		
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10); // getNext()는 다음으로 작성될 글의 번호를 의미,  글이 5개일때 getNext()는 6 pageNumber는 5개니까 1 결과적으로 6이 pstmt에 set(담김), 6보다 작은 수의 bbsID가 출력되므로 5부터 출력된다.
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
	            bbs.setBbsType(rs.getString("bbsType"));
	            list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; // pageNumber에 알맞은 list를 반환
	}	
	
	// READ
	// pageNumber에 해당하는 게시글 목록 DB에서 가져오기
	public ArrayList<Bbs> getList_webtoon(int pageNumber){ // bbsID가 특정 숫자보다 작을때, 삭제가 되지 않아서 bbsAvailable = 1인 글들만, 위에서 10개 까지만 가져오기 
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1 AND bbsType = 'webtoon' ORDER BY bbsID DESC LIMIT 10";
		
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10); // getNext()는 다음으로 작성될 글의 번호를 의미,  글이 5개일때 getNext()는 6 pageNumber는 5개니까 1 결과적으로 6이 pstmt에 set(담김), 6보다 작은 수의 bbsID가 출력되므로 5부터 출력된다.
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
	            bbs.setBbsType(rs.getString("bbsType"));
	            list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; // pageNumber에 알맞은 list를 반환
	}
	
	// 해당 페이지로 넘어갈 수 있는지 검사 
	public boolean nextPage(int pageNumber){ // 게시글의 개수가 10단위로 끊기는 경우는 다음 페이지가 없다고 말해줘야 한다.
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1)*10); // 위와 같은 방식으로 글의 수보다 1큰 수가 ?에 삽입되고 쿼리문에 의해 ?보다 작은 수의 bbsID가 출력됨
			rs = pstmt.executeQuery(); // select문이니까 excuteQuery()
			if (rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false; 
	}
	
	public Bbs getBbs(int bbsID) { //하나의 글 내용을 불러오는 함수
		String SQL="SELECT * from BBS where bbsID = ?";
		try {
			PreparedStatement pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID); //물음표
			rs = pstmt.executeQuery(); //select
			if(rs.next()) { //결과가 있다면
				Bbs bbs = new Bbs();
			    
				bbs.setBbsID(rs.getInt("bbsID"));
			    bbs.setBbsTitle(rs.getString("bbsTitle"));
			    bbs.setUserID(rs.getString("userID"));
			    bbs.setBbsDate(rs.getString("bbsDate"));
			    bbs.setBbsContent(rs.getString("bbsContent"));
			    bbs.setBbsAvailable(rs.getInt("bbsAvailable"));
			    int bbsCount = rs.getInt("bbsCount");
			    bbs.setBbsCount(bbsCount);
			    bbsCount++;
			    countUpdate(bbsCount, bbsID);
				
				// bbs.setLikeCount(rs.getInt(8));
				//like(bbsID);
				return bbs; //6개의 항목을 bbs인스턴스에 넣어 반환한다.
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(int bbsID, String bbsTitle, String bbsContent) {	
		String SQL = "UPDATE BBS SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?"; // ㄱㅔ시판 번호에 따라 제목이랑 내용 변경하는 쿼리
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}
	
	public int delete(int bbsID) {
		String SQL = "UPDATE BBS SET bbsAvailable = 0 WHERE bbsID = ?"; // 게시판 아이디에 따라 사용불가로 변경하는 쿼리
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}
	
	public int countUpdate(int bbsCount, int bbsID) {
		String SQL = "update bbs set bbsCount = ? where bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsCount); //물음표의 순서
			pstmt.setInt(2, bbsID);
			return pstmt.executeUpdate(); //insert, delete, update			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public int getCount() {
		String SQL = "select count(*) from bbs";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<Bbs> getSearch(String searchField, String searchText){ //특정한 리스트를 받아서 반환
	      ArrayList<Bbs> list = new ArrayList<Bbs>();
	      String SQL ="select * from bbs WHERE "+searchField.trim();
	      try {
	            if(searchText != null && !searchText.equals("") ){ //이거 빼면 안 나온다ㅜ 왜지?
	                SQL +=" LIKE '%"+searchText.trim()+"%' order by bbsID desc limit 10";
	            }
	            PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();//select
	         while(rs.next()) {
	            Bbs bbs = new Bbs();
	            bbs.setBbsID(rs.getInt(1));
	            bbs.setBbsTitle(rs.getString(2));
	            bbs.setUserID(rs.getString(3));
	            bbs.setBbsDate(rs.getString(4));
	            bbs.setBbsContent(rs.getString(5));
	            bbs.setBbsAvailable(rs.getInt(6));
	            bbs.setBbsCount(rs.getInt(7));
	            // bbs.setLikeCount(rs.getInt(8));
	            list.add(bbs);//list에 해당 인스턴스를 담는다.
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;//ㄱㅔ시글 리스트 반환
	   }
	
}
	
