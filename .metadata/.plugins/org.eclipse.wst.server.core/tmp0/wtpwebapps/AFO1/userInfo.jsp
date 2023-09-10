<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="viewport" content="width=device-width", initial-scale="1">

<title>JSP 게시판 웹 사이트</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


</head>
<body>
	<%
	String userID=null;
	if(session.getAttribute("userID")!=null){
		userID=(String)session.getAttribute("userID");
	}
	User user = new UserDAO().getUser(userID);
	
	%>
	<!-- 네비게이션 바 -->
	<!-- <nav class="navbar navbar-inverse">
		<div class ="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">공유 다이어리📕</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">main</a></li>
				<li><a href="bbs.jsp">diary</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav> 
	-->
	<%
		
	%>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="userUpdateAction.jsp">  <!-- 회원정보 수정하는 페이지 -->
					<h3 style="text-align:center;">내 정보</h3>
					<div class = "form-group">
						<input type="text" class="form-control" value=<%=user.getUserID()%> name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" value=<%=user.getUserPassword()%> name="userPassword" maxlength="20">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" value=<%=user.getUserName()%> name="userName" maxlength="20">
					</div>
					
					<div class="form-group" style="text-align:center;">
						<div class="btn-group" data-toggle="buttons"> <!-- 성별 나누는 부분 -->
						<% 
							// 내가 이부분 드롭박스 클릭으로 변경해 놔서 레퍼런스랑 다름.
							if(user.getUserGender().equals("남자")) {
						%>
							<label class="btn btn-success active"> 
						<%
							} 
							else {
						%>
							<label class="btn btn-success">
						<%
							}
						%>		
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
						<%
							if(user.getUserGender().equals("여자")){
						%>
								<label class="btn btn-success active">
						<%
							} else{
						%>
								<label class="btn btn-success">
						<%
							}
						%>	
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					
					<div class="form-group">
						<input type="email" class="form-control" value=<%=user.getUserEmail()%> name="userEmail" maxlength="20">
					</div>
					
					<input type="submit" class="btn btn-success form-control" value="수정하기">
				</form>
				
					<br>
            <form method="post" action="userDeleteAction.jsp">  <!-- 유저 탈퇴 버튼 -->
            		<input type="submit" class="btn btn-danger pull-right" value="탈퇴하기">
            </form>

					</div></div>
</div></div>
	
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	
</body>
</html>