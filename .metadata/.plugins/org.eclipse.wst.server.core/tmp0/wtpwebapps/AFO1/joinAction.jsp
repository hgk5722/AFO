<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />	
<jsp:setProperty name="user" property="userName" /> // ---> 1.
<jsp:setProperty name="user" property="userGender" /> // ---> 1.
<jsp:setProperty name="user" property="userEmail" /> // --->1.
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%	
		
		
		
		// ---> 2.
		if (user.getUserID() == null || user.getUserPassword() == null || user.getUserName() == null
			|| user.getUserGender() == null || user.getUserEmail() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()"); // 뒤로 돌아가는 코드
			script.println("</script>");
		} else {  // ---> 3.
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else  {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입을 완료했습니다. 로그인 해주세요.')");
				script.println("location.href = 'index.jsp'");
				script.println("</script>");
			}
		}
	%>
</body>
</html>