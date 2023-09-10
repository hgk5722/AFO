<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title> contents.jsp </title>

<link rel="stylesheet" type="text/css" href="css_folder/ContentsCSS.css">

<style>
.container {
	height: 40%;
    width: 100%;
}

.img_item {
	width: 100vw;
   	height: 40vh;
   	background-image: linear-gradient(
   		to right,
   		rgba(20, 20, 20, 1) 10%,
   		rgba(20, 20, 20, 0.25) 25%,
        rgba(20, 20, 20, 0) 50%,
        rgba(20, 20, 20, 0.80) 75%,
        rgba(20, 20, 20, 1) 100%
   	), url("https://bit.ly/3kKdJhw");
   	background-repeat: no-repeat;
   	background-position: center;
   	backgorund-size: contain;
}

.parent1 {
    display: flex;
    flex-direction: row;	
    flex-wrap: nowrap;
    justify-content: space-between;
}
.parent2 {
	/* flex-grow: 1; */
	display: flex;
	flex-direction: column;
	flex-wrap: wrap;
	
	
}
.box1_1{
	flex-grow: 1;
    border: 1px solid black;
    
}
.box1_2 {
	flex-grow: 1;
    border: 1px solid red;
    
}



</style>


<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>
	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<div class="img_item">
	</div>
	
	<!-- 포스터 넣는 컨테이너 -->
	<div style= "margin-left: 15%; margin-right: 15%; padding: 5px; border: 1px solid">
		<div class="parent1"> 
			<div style="margin: 3px">
				<img border=3 src="https://bit.ly/3DmMz6J">
			</div>
			<div class="parent2" style="padding: 1px; border: 1px solid">
				<div class="box1_1" style="word-break:break-all">
					<h2> <b> 영화의 제목 </b> </h2>
					출시연도 * 장르 * 국가
				</div>
				<div class="box1_1" style="word-break:break-all">
					<p> <b> 영화의 평점 </b> </p>
				</div>
				<div class="box1_2" style="word-break:break-all">
					이곳엔 이용자가 평점을 남길 수 있는 부분 추가!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				</div>
			</div>	
		</div>
	</div>
	
	<br>
	
	<!-- 기본정보를 넣는 컨테이너 -->
	<div style= "margin-left: 15%; margin-right: 15%; padding: 5px; border: 1px solid" class="container2">
		<div class="container2_1">
			
			<div class="box2_1" style="word-break:break-all">
				<p> <b> 기본 정보 </b> </p>
				Avatar: The Way of Water
				2022 · 미국 · 액션
				3시간 12분 · 12세
				<br>
				아바타: 물의 길은 판도라 행성에서 '제이크 설리'와 '네이티리'가 이룬 가족이 겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투, 그리고 견뎌내야 할 상처에 대한 이야기를 그렸다. 월드와이...
				
			</div>
			
			<div class="box2_1" style="word-break:break-all">
				<p> <b> 출연/제작 </b> </p>
				이곳엔 부트스트랩에서 슬라이드 가져와서 출연진 목록을 넣어줄것.
			</div>
			
			<div class="box2_1" style="word-break:break-all">
				<p> <b> 비슷한 작품 </b> </p>
			</div>
			
		</div>
		
		<div class="container2_2">
			<div class="box2_2" style="word-break:break-all">
				<img border=3 src="https://bit.ly/3DmMz6J">
			</div>
				
			<div class="box2_2" style="word-break:break-all">
				<img border=3 src="https://bit.ly/3DmMz6J">
			</div>
		</div>
	
	</div>
	
	
	<p> Aaaaaaa~  </p>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>