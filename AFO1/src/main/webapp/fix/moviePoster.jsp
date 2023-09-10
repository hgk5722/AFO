<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.PreparedStatement" %>

<%

	Connection conn = null;
	PreparedStatement pstmt_boxoffice = null;
	PreparedStatement pstmt_coupang_movie_korea = null;
	PreparedStatement pstmt_coupang_movie_foreign = null;
	PreparedStatement pstmt_netflex_movie_korea = null;
	PreparedStatement pstmt_netflex_movie_foreign = null;
	PreparedStatement pstmt_watcha_movie_korea = null;
	PreparedStatement pstmt_watcha_movie_foreign = null;
	PreparedStatement pstmt_wavve_movie_korea = null;
	PreparedStatement pstmt_wavve_movie_foreign = null;
	PreparedStatement pstmt_disneyplus_movie_korea = null;
	PreparedStatement pstmt_disneyplus_movie_foreign = null;
	PreparedStatement pstmt_coupang_movie_romance = null;
	PreparedStatement pstmt_coupang_movie_comedy = null;
	PreparedStatement pstmt_coupang_movie_action = null;
	PreparedStatement pstmt_coupang_movie_sf = null;
	
	ResultSet rs_boxoffice = null;
	ResultSet rs_coupang_movie_korea = null;
	ResultSet rs_coupang_movie_foreign = null;
	ResultSet rs_netflex_movie_korea = null;
	ResultSet rs_netflex_movie_foreign = null;
	ResultSet rs_watcha_movie_korea = null;
	ResultSet rs_watcha_movie_foreign = null;
	ResultSet rs_wavve_movie_korea = null;
	ResultSet rs_wavve_movie_foreign = null;
	ResultSet rs_disneyplus_movie_korea = null;
	ResultSet rs_disneyplus_movie_foreign = null;
	ResultSet rs_coupang_movie_romance = null;
	ResultSet rs_coupang_movie_comedy = null;
	ResultSet rs_coupang_movie_action = null;
	ResultSet rs_coupang_movie_sf = null;
	
	try {
		String dbURL = "jdbc:mysql://localhost:3306/AFO_schema";
		String dbID = "root";
		String dbPassword = "12345678";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	String SQL_boxoffice = "select * from boxoffice ORDER BY id";
	String SQL_coupang_movie_korea = "select * from coupangmoviekorea ORDER BY id";
	String SQL_coupang_movie_foreign = "select * from coupangmovieforeign ORDER BY id";
	String SQL_netflex_movie_korea = "select * from netflix_movie_korea ORDER BY id";
	String SQL_netflex_movie_foreign = "select * from netflix_movie_foreign ORDER BY id";
	String SQL_watcha_movie_korea = "select * from watcha_movie_korea ORDER BY id";
	String SQL_watcha_movie_foreign = "select * from watcha_movie_foreign ORDER BY id";
	String SQL_wavve_movie_korea = "select * from wavve_movie_korea ORDER BY id";
	String SQL_wavve_movie_foreign = "select * from wavve_movie_foreign ORDER BY id";
	String SQL_disneyplus_movie_korea = "select * from disneyplus_movie_korea ORDER BY id";
	String SQL_disneyplus_movie_foreign = "select * from disneyplus_movie_foreign ORDER BY id";
	String SQL_coupang_movie_romance = "select * from coupangmovieromance ORDER BY id";
	String SQL_coupang_movie_comedy = "select * from coupangmoviecomedy ORDER BY id";
	String SQL_coupang_movie_action = "select * from coupangmovieaction ORDER BY id";
	String SQL_coupang_movie_sf = "select * from coupangmoviesf ORDER BY id";
	
	
	pstmt_boxoffice = conn.prepareStatement(SQL_boxoffice);
	pstmt_coupang_movie_korea = conn.prepareStatement(SQL_coupang_movie_korea);
	pstmt_coupang_movie_foreign = conn.prepareStatement(SQL_coupang_movie_foreign);
	pstmt_netflex_movie_korea = conn.prepareStatement(SQL_netflex_movie_korea);
	pstmt_netflex_movie_foreign = conn.prepareStatement(SQL_netflex_movie_foreign);
	pstmt_watcha_movie_korea = conn.prepareStatement(SQL_watcha_movie_korea);
	pstmt_watcha_movie_foreign = conn.prepareStatement(SQL_watcha_movie_foreign);
	pstmt_wavve_movie_korea = conn.prepareStatement(SQL_wavve_movie_korea);
	pstmt_wavve_movie_foreign = conn.prepareStatement(SQL_wavve_movie_foreign);
	pstmt_disneyplus_movie_korea = conn.prepareStatement(SQL_disneyplus_movie_korea);
	pstmt_disneyplus_movie_foreign = conn.prepareStatement(SQL_disneyplus_movie_foreign);
	pstmt_coupang_movie_romance = conn.prepareStatement(SQL_coupang_movie_romance);
	pstmt_coupang_movie_comedy = conn.prepareStatement(SQL_coupang_movie_comedy);
	pstmt_coupang_movie_action = conn.prepareStatement(SQL_coupang_movie_action);
	pstmt_coupang_movie_sf = conn.prepareStatement(SQL_coupang_movie_sf);
	
	
	rs_boxoffice = pstmt_boxoffice.executeQuery();
	rs_coupang_movie_korea = pstmt_coupang_movie_korea.executeQuery();
	rs_coupang_movie_foreign = pstmt_coupang_movie_foreign.executeQuery();
	rs_netflex_movie_korea = pstmt_netflex_movie_korea.executeQuery();
	rs_netflex_movie_foreign = pstmt_netflex_movie_foreign.executeQuery();
	rs_watcha_movie_korea = pstmt_watcha_movie_korea.executeQuery();
	rs_watcha_movie_foreign = pstmt_watcha_movie_foreign.executeQuery();
	rs_wavve_movie_korea = pstmt_wavve_movie_korea.executeQuery();
	rs_wavve_movie_foreign = pstmt_wavve_movie_foreign.executeQuery();
	rs_disneyplus_movie_korea = pstmt_disneyplus_movie_korea.executeQuery();
	rs_disneyplus_movie_foreign = pstmt_disneyplus_movie_foreign.executeQuery();
	rs_coupang_movie_romance = pstmt_coupang_movie_romance.executeQuery();
	rs_coupang_movie_comedy = pstmt_coupang_movie_comedy.executeQuery();
	rs_coupang_movie_action = pstmt_coupang_movie_action.executeQuery();
	rs_coupang_movie_sf = pstmt_coupang_movie_sf.executeQuery();
	
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>poster.jsp</title>

<!-- 영화 포스터 크기 조절 css -->
<link rel="stylesheet" type="text/css" href="fix/MovieCSS.css">

<!-- 텍스트 데코레이션 css -->
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- 슬릭 css -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!-- 슬릭 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- 슬릭 js -->
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> -->

<!-- 폰트 어썸 cdn -->
<script src="https://kit.fontawesome.com/f727c89db8.js" crossorigin="anonymous"></script>

<script> 
	$(function()	{
		$('.mainSlide').slick({
			slidesToShow: 5,
			slidesToScroll: 5,
			arrows: true,
			// prevArrow: "<i class='prev_arrow bi bi-arrow-left-circle'></i>",
			prevArrow: "<i class='white prev_arrow fa-solid fa-circle-chevron-left' ></i>",
			nextArrow: "<i class='white next_arrow fa-solid fa-circle-chevron-right' ></i>",
			dots: false,
			adaptiveHeight: true,
			
		});
	}); 
</script>

</head>
<body>

<!-- 	<p> <h2> <b> 박스오피스 순위 </b> </h2> </p>
	
	<div class="mainSlide model1">
			<div>
				<a class="t1" href="contents.jsp" target="_self">
					<img src="https://search.pstatic.net/common?type=f&size=206x290&quality=100&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20221215_185%2F1671091761840XXpCR_JPEG%2Fmovie_image.jpg" >
					<b> 1. 아바타 : 물의 길 </b> <br>
					2022. 미국. 평점 3.7
				</a> 
			</div>
			
	</div> -->
	
	<p> <h2> <b> 박스오피스 순위 </b> </h2> </p>
	<div class="mainSlide model1">
	<%
		while(rs_boxoffice.next()) {
	%>
	
	<div>
		<a href= <%= rs_boxoffice.getString("link") %> target="_blank">
			<img src= <%= rs_boxoffice.getString("thumb") %> >
		</a>
		<b> <%= rs_boxoffice.getString("title")%> </b> <%= rs_boxoffice.getString("year") %> 
		<%= rs_boxoffice.getString("classification") %> <br>
	</div>
	<%
		}
	%>
	
	</div>
	
	<br>
	<p> <h2> <b> 쿠팡플레이 top 20 한국영화 </b> </h2> </p>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_movie_korea.next()) {
	%>
	
	<div>
		<a href= <%= rs_coupang_movie_korea.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_movie_korea.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_movie_korea.getString("title")%> </b> <%= rs_coupang_movie_korea.getString("year") %> 
		<%= rs_coupang_movie_korea.getString("platform") %> <br>
	</div>
	<%
		}
	%>
	
	</div>
	
	<br>
	<p> <h2> <b> 쿠팡플레이 top 20 해외영화 </b> </h2> </p>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_movie_foreign.next()) {
	%>
	
	<div>
		<a href= <%= rs_coupang_movie_foreign.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_movie_foreign.getString("thumb") %> >
		</a>
		<b> <%= rs_coupang_movie_foreign.getString("title")%> </b> <%= rs_coupang_movie_foreign.getString("year") %> 
		<%= rs_coupang_movie_foreign.getString("platform") %> <br>
	</div>
	<%
		}
	%>
	
	</div>
	
	<br>
	<p> <h2> <b> 넷플릭스 top 20 한국영화 </b> </h2>
	<div class="mainSlide model1">
		
	<%
		while(rs_netflex_movie_korea.next()) {
	%>
	
	<div>
		<img src= <%= rs_netflex_movie_korea.getString("thumb") %> >
		
		<b> <%= rs_netflex_movie_korea.getString("title")%> </b> <%= rs_netflex_movie_korea.getString("year") %> 
		<%= rs_netflex_movie_korea.getString("platform") %> <br>
	</div>
	<%
		}
	%>
		
	</div>
	
	<br>
	<p> <h2> <b> 넷플릭스 top 20 해외영화 </b> </h2>
	<div class="mainSlide model1">
		
	<%
		while(rs_netflex_movie_foreign.next()) {
	%>
	
	<div>
		<img src= <%= rs_netflex_movie_foreign.getString("thumb") %> >
		
		<b> <%= rs_netflex_movie_foreign.getString("title")%> </b> <%= rs_netflex_movie_foreign.getString("year") %> 
		<%= rs_netflex_movie_foreign.getString("platform") %> <br>
	</div>
	<%
		}
	%>
		
	</div>
	
	<br>
	
	<p> <h2> <b> 왓챠 top 20 한국영화 </b> </h2>
	<div class="mainSlide model1">
		<%
			while(rs_watcha_movie_korea.next()) {
		%>
		
		<div>
			<img src= <%= rs_watcha_movie_korea.getString("thumb") %> >
			
			<b> <%= rs_watcha_movie_korea.getString("title")%> </b> <%= rs_watcha_movie_korea.getString("year") %> 
			<%= rs_watcha_movie_korea.getString("platform") %> <br>
		</div>
		<%
			}
		%>	
	</div>
	<br>
	
	<p> <h2> <b> 왓챠 top 20 해외영화 </b> </h2>
	<div class="mainSlide model1">
		<%
			while(rs_watcha_movie_foreign.next()) {
		%>
		
		<div>
			<img src= <%= rs_watcha_movie_foreign.getString("thumb") %> >
			
			<b> <%= rs_watcha_movie_foreign.getString("title")%> </b> <%= rs_watcha_movie_foreign.getString("year") %> 
			<%= rs_watcha_movie_foreign.getString("platform") %> <br>
		</div>
		<%
			}
		%>	
	</div>
	<br>
	
	<p> <h2> <b> 웨이브 top 20 한국영화 </b> </h2>
	<div class="mainSlide model1">
		<%
			while(rs_wavve_movie_korea.next()) {
		%>
		
		<div>
			<img src= <%= rs_wavve_movie_korea.getString("thumb") %> >
			
			<b> <%= rs_wavve_movie_korea.getString("title")%> </b> <%= rs_wavve_movie_korea.getString("year") %> 
			<%= rs_wavve_movie_korea.getString("platform") %> <br>
		</div>
		<%
			}
		%>	
	</div> 
	<br>
	
	<p> <h2> <b> 웨이브 top 20 해외영화 </b> </h2>
	<div class="mainSlide model1">
		<%
			while(rs_wavve_movie_foreign.next()) {
		%>
		
		<div>
			<img src= <%= rs_wavve_movie_foreign.getString("thumb") %> >
			
			<b> <%= rs_wavve_movie_foreign.getString("title")%> </b> <%= rs_wavve_movie_foreign.getString("year") %> 
			<%= rs_wavve_movie_foreign.getString("platform") %> <br>
		</div>
		<%
			}
		%>	
	</div> 
	<br>
	
	
	<p> <h2> <b> 디즈니 플러스 top 10 한국영화 </b> </h2>
	<div class="mainSlide model1">
		<%
			while(rs_disneyplus_movie_korea.next()) {
		%>
		
		<div>
			<img src= <%= rs_disneyplus_movie_korea.getString("thumb") %> >
			
			<b> <%= rs_disneyplus_movie_korea.getString("title")%> </b> <%= rs_disneyplus_movie_korea.getString("year") %> 
			<%= rs_disneyplus_movie_korea.getString("platform") %> <br>
		</div>
		<%
			}
		%>	
	</div>
	<br>
	
	<p> <h2> <b> 디즈니 플러스 top 20 해외영화 </b> </h2>
	<div class="mainSlide model1">
		<%
			while(rs_disneyplus_movie_foreign.next()) {
		%>
		
		<div>
			<img src= <%= rs_disneyplus_movie_foreign.getString("thumb") %> >
			
			<b> <%= rs_disneyplus_movie_foreign.getString("title")%> </b> <%= rs_disneyplus_movie_foreign.getString("year") %> 
			<%= rs_disneyplus_movie_foreign.getString("platform") %> <br>
		</div>
		<%
			}
		%>	
	</div>
	<br>
	
	<p> <h2> <b> #쿠팡 플레이 영화 top 20 로맨스 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_movie_romance.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_movie_romance.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_movie_romance.getString("thumb") %> >
		</a>	
		<b> <%= rs_coupang_movie_romance.getString("title")%> </b> <%= rs_coupang_movie_romance.getString("year") %> 
		<%= rs_coupang_movie_romance.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 영화 top 20 코미디 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_movie_comedy.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_movie_comedy.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_movie_comedy.getString("thumb") %> >
		</a>	
		<b> <%= rs_coupang_movie_comedy.getString("title")%> </b> <%= rs_coupang_movie_comedy.getString("year") %> 
		<%= rs_coupang_movie_comedy.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 영화 top 20 액션 </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_movie_action.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_movie_action.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_movie_action.getString("thumb") %> >
		</a>	
		<b> <%= rs_coupang_movie_action.getString("title")%> </b> <%= rs_coupang_movie_action.getString("year") %> 
		<%= rs_coupang_movie_action.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>
	
	<br>
	<p> <h2> <b> #쿠팡 플레이 영화 top 20 SF </b> </h2>
	<div class="mainSlide model1">
	<%
		while(rs_coupang_movie_sf.next()) {
	%>
	<div>
		<a href= <%= rs_coupang_movie_sf.getString("link") %> target="_blank">
			<img src= <%= rs_coupang_movie_sf.getString("thumb") %> >
		</a>	
		<b> <%= rs_coupang_movie_sf.getString("title")%> </b> <%= rs_coupang_movie_sf.getString("year") %> 
		<%= rs_coupang_movie_sf.getString("platform") %> <br>
	</div>
	
	<%
		}
	%>
	</div>

<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</body>
</html>