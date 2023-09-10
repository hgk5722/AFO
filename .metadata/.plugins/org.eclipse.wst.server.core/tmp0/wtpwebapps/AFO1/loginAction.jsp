<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userLogin.jsp</title>
	
</head>
<body>

	<%
		session.setAttribute("userID", user.getUserID()); // 회원의 로그인 정보를 저장하는 세션 저장 
		
		UserDAO userDAO = new UserDAO();	// userDAO 인스턴스 생성
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if (result == 1) { // 로그인 성공
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공.')");
			script.println("location.href = 'index.jsp'");
			script.println("</script>");
		}
		else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생헀습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>

</body>
</html>