<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>userLogin.jsp</title>

<link rel="stylesheet" type="text/css" href="css_folder/signin.css">
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


</head>

<% // 이미 로그인 되어있는데 또 로그인하는 경우 띄우는 경고 메세지
		
		if(session.getAttribute("userID")!=null)
		{
%>
			<script>
				alert("이미 로그인 되었습니다.")
			</script>
<%			
			out.println("<script>location.href='index.jsp';</script>");
		}
%>


<body class="text-center">
    
    	
    
<main class="form-signin w-100 m-auto">

<!-- 로그인 항목 넘기기 -->
  <form action="loginAction.jsp" method="post">
    <h1 class="h3 mb-3 fw-normal no_blue"> <a href="/AFO1/index.jsp"> <b> ALL FOR ONE </b> </a> </h1>
    <h1 class="h3 mb-3 fw-normal">로그인</h1>



    <div class="form-floating">
      
      <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      
      <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> 정보 기억하기
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    
    <!-- 회원가입 페이지 이동 -->
    <a href="userJoin.jsp">
    	<button type="button" class="w-100 btn btn-lg btn-outline-dark">회원가입</button>
    </a>
    
  </form>
</main>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    
  </body>
</html>