<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title> header.jsp </title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<!-- 부트스트랩 아이콘 cdn -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">


<!-- TOP BTN[S] -->
<a id="MOVE_TOP_BTN" href="#">TOP</a>
<style>
a#MOVE_TOP_BTN {
	position: fixed;
	right: 2%;
	bottom: 50px;
	display: none;
	z-index: 999;
	padding:10px;
	background-color:#2490BF;
	color:#FFFFE0;
}
</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 500) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });
        
        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });
</script>
<!-- TOP BTN[E] -->


</head>
<body>

<%
	String id = null;		// 네비게이션 바에서 로그인의 유무만 파악하는 변수
	if (session.getAttribute("userID") != null) {
		id = (String) session.getAttribute("userID");
	}
%>


<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"> <img src="logo/AFO_logo.png" alt="AFO_logo" style="width:100px; height: 40px; border: 0;">  </a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Movie.jsp"> <b> Movie </b> </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Drama.jsp">
          <b> Drama </b> </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Webtoon.jsp">
          <b> Webtoon </b> </a>
        </li>  
      </ul>

    </div>
    
    <%
    	if (id != null) {
   	%>
   		<button type="button" class="btn btn-outline-success" onclick="location.href='logoutAction.jsp'">로그아웃</button>
   		<button type="button" class="btn btn-outline-danger" onclick="location.href='userInfo.jsp'">내정보</button>
   		<button type="button" class="btn btn-outline-primary" onclick="location.href='jjimBbs.jsp?pageNumber=1'"> 찜목록 </button>
    <%
    	} else {
    %>
    	<button type="button" onclick="location.href='userLogin.jsp'" class="btn btn-outline-success">로그인</button>
    <% 
    	} 
    %>
    
    <button type="button" onclick="location.href='bbs_collection.jsp'" class="btn btn-outline-dark">게시판</button>    
    
<form method="post" name="search" action="searchbbs.jsp">
    <div style="display:flex; align-items:center;">
        <select class="form-select" aria-label="Default select example" name="searchField" style="flex:0.5;">
            <option value="0"> 선택 </option>
            <option value="bbsTitle"> 제목 </option>
            <option value="userID"> 작성자 </option>
        </select>
        <input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100" style="flex:2;">
        <button type="submit" class="btn btn-outline-success">검색</button>
    </div>
</form>






    
  </div>
</nav>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


</body>
</html>