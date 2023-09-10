<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.PreparedStatement" %>

<%

	Connection conn = null;
	PreparedStatement pstmt_drama = null;
	PreparedStatement pstmt_coupang_drama_korea = null;
	PreparedStatement pstmt_coupang_drama_foreign = null;
	PreparedStatement pstmt_netflix_drama_korea = null;
	PreparedStatement pstmt_netflix_drama_foreign = null;
	PreparedStatement pstmt_wavve_drama_korea = null;
	PreparedStatement pstmt_wavve_drama_foreign = null;
	PreparedStatement pstmt_watcha_drama_korea = null;
	PreparedStatement pstmt_watcha_drama_foreign = null;
	PreparedStatement pstmt_disneyplus_drama_korea = null;
	PreparedStatement pstmt_disneyplus_drama_foreign = null;
	PreparedStatement pstmt_coupang_drama_romance = null;
	PreparedStatement pstmt_coupang_drama_comedy = null;
	PreparedStatement pstmt_coupang_drama_fantasy = null;
	PreparedStatement pstmt_coupang_drama_history = null;
	
	ResultSet rs_drama = null;
	ResultSet rs_coupang_drama_korea = null;
	ResultSet rs_coupang_drama_foreign = null;
	ResultSet rs_netflix_drama_korea = null;
	ResultSet rs_netflix_drama_foreign = null;
	ResultSet rs_wavve_drama_korea = null;
	ResultSet rs_wavve_drama_foreign = null;
	ResultSet rs_watcha_drama_korea = null;
	ResultSet rs_watcha_drama_foreign = null;
	ResultSet rs_disneyplus_drama_korea = null;
	ResultSet rs_disneyplus_drama_foreign = null;
	ResultSet rs_coupang_drama_romance = null;
	ResultSet rs_coupang_drama_comedy = null;
	ResultSet rs_coupang_drama_fantasy = null;
	ResultSet rs_coupang_drama_history = null;
	
	try {
		String dbURL = "jdbc:mysql://localhost:3306/AFO_schema";
		String dbID = "root";
		String dbPassword = "12345678";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	String SQL_drama = "select * from tmdb_drama ORDER BY id";
	String SQL_coupang_drama_korea = "select * from coupangdramakorea ORDER BY id";
	String SQL_coupang_drama_foreign = "select * from coupangdramaforeign ORDER BY id";
	String SQL_netflix_drama_korea = "select * from netflix_drama_korea ORDER BY id";
	String SQL_netflix_drama_foreign = "select * from netflix_drama_foreign ORDER BY id";
	String SQL_wavve_drama_korea = "select * from wavve_drama_korea ORDER BY id";
	String SQL_wavve_drama_foreign = "select * from wavve_drama_foreign ORDER BY id";
	String SQL_watcha_drama_korea = "select * from watcha_drama_korea ORDER BY id";
	String SQL_watcha_drama_foreign = "select * from watcha_drama_foreign ORDER BY id";
	String SQL_disneyplus_drama_korea = "select * from disneyplus_drama_korea ORDER BY id";
	String SQL_disneyplus_drama_foreign = "select * from disneyplus_drama_foreign ORDER BY id";
	String SQL_coupang_drama_romance = "select * from coupangdramaromance ORDER BY id";
	String SQL_coupang_drama_comedy = "select * from coupangdramacomedy ORDER BY id";
	String SQL_coupang_drama_fantasy = "select * from coupangdramafantasy ORDER BY id";
	String SQL_coupang_drama_history = "select * from coupangdramahistory ORDER BY id";
	
	pstmt_drama = conn.prepareStatement(SQL_drama);
	pstmt_coupang_drama_korea = conn.prepareStatement(SQL_coupang_drama_korea);
	pstmt_coupang_drama_foreign = conn.prepareStatement(SQL_coupang_drama_foreign);
	pstmt_netflix_drama_korea = conn.prepareStatement(SQL_netflix_drama_korea);
	pstmt_netflix_drama_foreign = conn.prepareStatement(SQL_netflix_drama_foreign);
	pstmt_wavve_drama_korea = conn.prepareStatement(SQL_wavve_drama_korea);
	pstmt_wavve_drama_foreign = conn.prepareStatement(SQL_wavve_drama_foreign);
	pstmt_watcha_drama_korea = conn.prepareStatement(SQL_watcha_drama_korea);
	pstmt_watcha_drama_foreign = conn.prepareStatement(SQL_watcha_drama_foreign);
	pstmt_disneyplus_drama_korea = conn.prepareStatement(SQL_disneyplus_drama_korea);
	pstmt_disneyplus_drama_foreign = conn.prepareStatement(SQL_disneyplus_drama_foreign);
	pstmt_coupang_drama_romance = conn.prepareStatement(SQL_coupang_drama_romance);
	pstmt_coupang_drama_comedy = conn.prepareStatement(SQL_coupang_drama_comedy);
	pstmt_coupang_drama_fantasy = conn.prepareStatement(SQL_coupang_drama_fantasy);
	pstmt_coupang_drama_history = conn.prepareStatement(SQL_coupang_drama_history);
	
	rs_drama = pstmt_drama.executeQuery();
	rs_coupang_drama_korea = pstmt_coupang_drama_korea.executeQuery();
	rs_coupang_drama_foreign = pstmt_coupang_drama_foreign.executeQuery();
	rs_netflix_drama_korea = pstmt_netflix_drama_korea.executeQuery();
	rs_netflix_drama_foreign = pstmt_netflix_drama_foreign.executeQuery();
	rs_wavve_drama_korea = pstmt_wavve_drama_korea.executeQuery();
	rs_wavve_drama_foreign = pstmt_wavve_drama_foreign.executeQuery();
	rs_watcha_drama_korea = pstmt_watcha_drama_korea.executeQuery();
	rs_watcha_drama_foreign = pstmt_watcha_drama_foreign.executeQuery();
	rs_disneyplus_drama_korea = pstmt_disneyplus_drama_korea.executeQuery();
	rs_disneyplus_drama_foreign = pstmt_disneyplus_drama_foreign.executeQuery();
	rs_coupang_drama_romance = pstmt_coupang_drama_romance.executeQuery();
	rs_coupang_drama_comedy = pstmt_coupang_drama_comedy.executeQuery();
	rs_coupang_drama_fantasy = pstmt_coupang_drama_fantasy.executeQuery();
	rs_coupang_drama_history = pstmt_coupang_drama_history.executeQuery();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>dramaPoster.jsp</title>

<!-- 영화 포스터 크기 조절 css -->
<link rel="stylesheet" type="text/css" href="fix/MovieCSS.css">

<!-- 텍스트 데코레이션 css -->
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- 슬릭 css -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!-- 슬릭 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- 슬릭 js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- 폰트 어썸 cdn -->
<script src="https://kit.fontawesome.com/f727c89db8.js" crossorigin="anonymous"></script>


<script> 
	$(function()	{
		$('.mainSlide').slick({
			slidesToShow: 5,
			slidesToScroll: 5,
			arrows: true,
			prevArrow: "<i class='white prev_arrow fa-solid fa-circle-chevron-left' ></i>",
			  //prevArrow: "<button type='button' class='slick-prev'>이전</button>",
			nextArrow: "<i class='white next_arrow fa-solid fa-circle-chevron-right' ></i>",
			dots: false,
			
			
		});
	}); 
</script>


</head>
<body>
	
	<p> <h2> <b> 한국 TV 프로그램 순위 </b> </h2> </p>
	<div class="mainSlide model1">
	<%
		while(rs_drama.next()) {		
	%>
	<div>
		
		<img src= <%= rs_drama.getString("thumb") %> >
		
		<b> <%= rs_drama.getString("title")%> </b> <%= rs_drama.getString("year") %> 
		<%= rs_drama.getString("platform") %> <br>
	</div>
	<%
		}
	%>
	</div>
	<br>

	<p> <h2> <b> 쿠팡플레이 top 20 한국드라마 </b> </h2> </p>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_drama_korea.next()) {		
	%>
	<div>
		<a href= <%= rs_coupang_drama_korea.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_drama_korea.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_drama_korea.getString("title")%> </b> <%= rs_coupang_drama_korea.getString("year") %> 
		<%= rs_coupang_drama_korea.getString("platform") %> <br>
	</div>
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> 쿠팡플레이 top 20 해외드라마 </b> </h2> </p>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_drama_foreign.next()) {		
	%>
	<div>
		<a href= <%= rs_coupang_drama_foreign.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_drama_foreign.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_drama_foreign.getString("title")%> </b> <%= rs_coupang_drama_foreign.getString("year") %> 
		<%= rs_coupang_drama_foreign.getString("platform") %> <br>
	</div>
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> 넷플릭스 top 20 한국드라마 </b> </h2>
 	<div class="mainSlide model1">
	<%
		while(rs_netflix_drama_korea.next()) {
	%>
	<div>
		<img src= <%= rs_netflix_drama_korea.getString("thumb") %> >
		<b> <%= rs_netflix_drama_korea.getString("title")%> </b> <%= rs_netflix_drama_korea.getString("year") %> 
		<%= rs_netflix_drama_korea.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	
	</div>
	
	<br>
	<p> <h2> <b> 넷플릭스 top 20 해외드라마 </b> </h2>
 	<div class="mainSlide model1">
	<%
		while(rs_netflix_drama_foreign.next()) {
	%>
	<div>
		<img src= <%= rs_netflix_drama_foreign.getString("thumb") %> >
		<b> <%= rs_netflix_drama_foreign.getString("title")%> </b> <%= rs_netflix_drama_foreign.getString("year") %> 
		<%= rs_netflix_drama_foreign.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	
	</div>
	
	
	<br>
	<p> <h2> <b> 웨이브 top 20 한국드라마 </b> </h2>
	<div class="mainSlide model1">
		
	<%
		while(rs_wavve_drama_korea.next()) {
	%>
	<div>
		<img src= <%= rs_wavve_drama_korea.getString("thumb") %> >
		<b> <%= rs_wavve_drama_korea.getString("title")%> </b> <%= rs_wavve_drama_korea.getString("year") %> 
		<%= rs_wavve_drama_korea.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
		
	</div>
	
	<br>
	<p> <h2> <b> 웨이브 top 20 해외드라마 </b> </h2>
	<div class="mainSlide model1">
		
	<%
		while(rs_wavve_drama_foreign.next()) {
	%>
	<div>
		<img src= <%= rs_wavve_drama_foreign.getString("thumb") %> >
		<b> <%= rs_wavve_drama_foreign.getString("title")%> </b> <%= rs_wavve_drama_foreign.getString("year") %> 
		<%= rs_wavve_drama_foreign.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
		
	</div>
	
	<br>
	<p> <h2> <b> 왓챠 top 20 한국드라마 </b> </h2>
	<div class="mainSlide model1">
		
	<%
		while(rs_watcha_drama_korea.next()) {
	%>
	<div>
		<img src= <%= rs_watcha_drama_korea.getString("thumb") %> >
		<b> <%= rs_watcha_drama_korea.getString("title")%> </b> <%= rs_watcha_drama_korea.getString("year") %> 
		<%= rs_watcha_drama_korea.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	
	</div>
	
	<br>
	<p> <h2> <b> 왓챠 top 20 해외드라마 </b> </h2>
	<div class="mainSlide model1">
		
	<%
		while(rs_watcha_drama_foreign.next()) {
	%>
	<div>
		<img src= <%= rs_watcha_drama_foreign.getString("thumb") %> >
		<b> <%= rs_watcha_drama_foreign.getString("title")%> </b> <%= rs_watcha_drama_foreign.getString("year") %> 
		<%= rs_watcha_drama_foreign.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	
	</div>
	
	<br>
	<p> <h2> <b> 디즈니 플러스 top 20 한국드라마 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_disneyplus_drama_korea.next()) {
	%>
	<div>
		<img src= <%= rs_disneyplus_drama_korea.getString("thumb") %> >
		<b> <%= rs_disneyplus_drama_korea.getString("title")%> </b> <%= rs_disneyplus_drama_korea.getString("year") %> 
		<%= rs_disneyplus_drama_korea.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> 디즈니 플러스 top 20 해외드라마 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_disneyplus_drama_foreign.next()) {
	%>
	<div>
		<img src= <%= rs_disneyplus_drama_foreign.getString("thumb") %> >
		<b> <%= rs_disneyplus_drama_foreign.getString("title")%> </b> <%= rs_disneyplus_drama_foreign.getString("year") %> 
		<%= rs_disneyplus_drama_foreign.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 드라마 top 20 로맨스 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_drama_romance.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_drama_romance.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_drama_romance.getString("thumb") %> >
		</a>	
		<b> <%= rs_coupang_drama_romance.getString("title")%> </b> <%= rs_coupang_drama_romance.getString("year") %> 
		<%= rs_coupang_drama_romance.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 드라마 top 20 코미디 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_drama_comedy.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_drama_comedy.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_drama_comedy.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_drama_comedy.getString("title")%> </b> <%= rs_coupang_drama_comedy.getString("year") %> 
		<%= rs_coupang_drama_comedy.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 드라마 top 20 판타지 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_drama_fantasy.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_drama_fantasy.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_drama_fantasy.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_drama_fantasy.getString("title")%> </b> <%= rs_coupang_drama_fantasy.getString("year") %> 
		<%= rs_coupang_drama_fantasy.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 드라마 top 20 사극 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_drama_history.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_drama_history.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_drama_history.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_drama_history.getString("title")%> </b> <%= rs_coupang_drama_history.getString("year") %> 
		<%= rs_coupang_drama_history.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	
</body>
</html>