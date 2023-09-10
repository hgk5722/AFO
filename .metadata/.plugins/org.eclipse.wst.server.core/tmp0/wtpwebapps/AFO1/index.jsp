<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<meta name="viewport" content="width=device-width", initial-scale="1">
<title> index page </title>



</head>
<body>
	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<img src="logo/ALLFORONE_logo.png" alt="ALLFORONE_LOGO" style="display: block; margin-left: auto; margin-right: auto; height: 200px;" >
	
	<div>
		<h2 style="text-align:center;">
			<span style="color:#FF1493;"> ALL </span> 
			<span style="color:#9400D3;"> FOR </span>
			<span > ONE은 </span>
		</h2>
		<h2 style="text-align:center"> 영화, 드라마, 웹툰의 랭킹을 제공하고 </h2>
		<h2 style="text-align:center"> 이에 대한 의견을 공유하는 커뮤니티 입니다. </h2>
	</div>
	
	<br><br>
	
	<div style="text-align: center;">
	    <figure style="display: inline-block; margin-right: 10px;">
        	<a href="Movie.jsp">
        		<img src="logo/movie_logo.png" alt="movie_logo" style="width:200px; height:200px; margin-left: 15px; margin-right: 15px;">
        	</a>
        	<figcaption> <h5> <b> 영화 </b> </h5> </figcaption>
    	</figure>
    	
    	<figure style="display: inline-block; margin-right: 10px;">
    		<a href="Drama.jsp">
    			<img src="logo/drama_logo.png" alt="Image 2" style="width:200px; height:200px; margin-left: 15px; margin-right: 15px;">
    		</a>
        	<figcaption> <h5> <b> 드라마 </b> </h5> </figcaption>
    	</figure>
    	
    	<figure style="display: inline-block; margin-right: 10px;">
    		<a href="Webtoon.jsp">
    			<img src="logo/webtoon_logo.png" alt="Image 3" style="width:200px; height:200px; margin-left: 30px;">
    		</a>
    		
        	<figcaption> <h5> <b> 웹툰 </b> </h5> </figcaption>
    	</figure>
	    
	    <figure style="display: inline-block; margin-right: 10px;">
	    	<a href="bbs_collection.jsp">
	    		<img src="logo/board_logo.png" alt="Image 4" style="width:200px; height:200px; margin-left: 15px; margin-right: 15px;">
	    	</a>
        	<figcaption> <h5> <b> 게시판 </b> </h5> </figcaption>
    	</figure>
	    
	</div>	
		
	
</body>
</html>