<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<html>
<head><title>Coupangplay Drama</title></head>
<body>
<%
	// MySQL JDBC Driver Loading
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/AFO_schema";
		String dbUser = "root";
		String dbPass = "12345678";
		
		String query = "select * from coupangdrama";
		
		// Create DB Connection 
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// Create Statement 
		stmt = conn.createStatement();
		
		// Run Qeury
		rs = stmt.executeQuery(query);
		
		// Print Result (Run by Query) 
		while(rs.next()) {
			%>
				<h1>제목 : <%= rs.getString("title")%></h1>
				<h2>감독 : <%= rs.getString("director") %><h2><br>
				<h2>출연 : <%= rs.getString("actor") %></h2><br>
				<%= rs.getString("genre") %><br>
				<%= rs.getString("story") %><br>
				<%= rs.getString("platform") %><br>
				<img src = <%= rs.getString("thumb") %>></img><br>
				<%= rs.getString("year") %>년 작품<br>
				<%= rs.getString("age") %><br>
				비슷한 컨텐츠<br>
				<img src = <%= rs.getString("similar_content1") %>></img>
				<img src = <%= rs.getString("similar_content2") %>></img>
				<img src = <%= rs.getString("similar_content3") %>></img><br>
				<a href = <%= rs.getString("link") %>>바로가기 링크</a>
			<%
		}
	} catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		// Close Statement 
		if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		if (stmt != null) try { stmt.close(); } catch(SQLException ex) {}
		
		// Close Connection
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>
</table>

</body>
</html>