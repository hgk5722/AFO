<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> 카카오웹툰 썸네일 </title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/sakila";
    String username = "root";
    String password = "passwd";

    Connection conn = DriverManager.getConnection(url, username, password);

    String query = "SELECT * FROM kakaowebtoon ";

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(query);
	int count = 0;
    while(rs.next()){
    	out.print("<a href=" + "https://naver.com" +">"+"<img src ="+ rs.getString("thumb") + ">"); 

    }
    
    rs.close();
    stmt.close();
    conn.close();
%>
</body>
</html>