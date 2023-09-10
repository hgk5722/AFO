<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>


<link rel="stylesheet" type="text/css" href="css_folder/signin.css">
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


</head>

<body class="text-center">
    
    <%
 		// 로그인된 회원들은 페이지에 접속할수 없도록
 		String userID = null;
 		if (session.getAttribute("userID") != null) { // loginAction에서 로그인 성공시 (result == 1)
 			userID = (String) session.getAttribute("userID");

 		}
 		if (userID != null) { // 이미 로그인 되어있어 접속이 처음이 아닌 경우
 			PrintWriter script = response.getWriter();
 			script.println("<script>");
 			script.println("alert('로그아웃 후 회원가입을 진행해주세요.')");
 			script.println("location.href='index.jsp'");
 			script.println("</script>");
 		}
    
    %>
    
    
    
<main class="form-signin w-100 m-auto">

<!-- 회원가입 항목 넘기기 -->
  <form action="joinAction.jsp" method="post" class="was-validated">
    <h1 class="h3 mb-3 fw-normal t1"> <a href="/AFO1/index.jsp"> <b> ALL FOR ONE </b> </a> </h1>
    <h1 class="h3 mb-3 fw-normal">회원가입</h1>



    <div class="form-floating">
      <!-- <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"> -->
      <input type="text" class="form-control " placeholder="아이디" name="userID" maxlength="20" required>
      <label for="floatingInput">ID</label>
    </div>
    <div class="form-floating">
      <!-- <input type="password" class="form-control" id="floatingPassword" placeholder="Password"> -->
      <input type="password" class="form-control " placeholder="비밀번호" name="userPassword" maxlength="20" required>
      <label for="floatingPassword">Password</label>
    </div>
    
    <div class="form-floating">
      <!-- <input type="password" class="form-control" id="floatingPassword" placeholder="Password"> -->
      <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" required>
      <label for="floatingPassword">Retype Password</label>
    </div>
    
    <div class="form-floating">  
      <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20" required>
      <label for="floatingInput">Name</label>
    </div>
    

    <div class="form-floating">
      <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20" required>
      <label for="floatingInput">Email</label>
    </div>

	<br>

	<select class="form-select" aria-label="Default select example" name="userGender" required>
	  <option value="" selected>성별을 선택해 주세요(Please choose your gender)</option>
	  <option value="남성">남성</option>
	  <option value="여성">여성</option>
	</select>

    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">회원가입 완료</button>
    
  </form>
</main>

	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    
  </body>
</html>