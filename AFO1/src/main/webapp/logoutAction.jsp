<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%
		PrintWriter script = response.getWriter();
		if(session.getAttribute("userID")!=null) {
			session.invalidate(); //접속한 회원의 세션을 빼앗음
			script.println("<script>");
			script.println("alert('로그아웃 성공.')");
			script.println("</script>");
		}
		else { // 로그아웃이 되어있는데 로그아웃 버튼을 누를 경우 나오는 메세지
			script.println("<script>");
			script.println("alert('로그인을 먼저 해주세요.')");
			script.println("</script>");
		}
	%>
	<script>
		location.href = 'index.jsp';
	</script>

</body>
</html>