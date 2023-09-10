<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


<title> AFO 전체 게시판 </title>
</head>
<body>
    <% 
	    String userID = null;
	    if (session.getAttribute("userID") != null){
	        userID = (String) session.getAttribute("userID");
	    }
	    if (userID == null){ // 로그인이 안된 경우
	    	PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('로그인을 먼저 해주세요.')");
	        script.println("location.href = 'userLogin.jsp'");
	        script.println("</script>");
	    }
	    int bbsID = 0;
	    if (request.getParameter("bbsID") != null) {
	        bbsID = Integer.parseInt(request.getParameter("bbsID")); // view.jsp에서 
	    }
	    if (bbsID == 0)
	    {
	        PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('유효하지 않은 글입니다')");
	        script.println("location.href = 'bbs.jsp'");
	        script.println("</script>");
	    }
	    Bbs bbs = new BbsDAO().getBbs(bbsID); // 게시판 번호로 게시판 전체 내용 가져오는 객체 생성
	    
	    if (!userID.equals(bbs.getUserID())){ // 로그인할때의 아이디(userID)와 글을 작성한 아이디(bbsID)가 같지 않을때
	    	PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('권한이 없습니다.')");
	        script.println("location.href = 'bbs.jsp'");
	        script.println("</script>");
	    }
    %>
    	
    <!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
    
    <div class= "container">
    	<div class= "row">
    		<form method="post" action="updateAction.jsp?bbsID=<%= bbsID%>"> <!-- 게시판 번호 updateAction.jsp로 넘김 -->
    			<table class= "table table-stripped" style= "text-align: center; boarder: 1px solid #dddddd">
	    	    	<thead>
		    	    	<tr>
		    	    		<th colspan= "2" style= "background-color: #eeeeee; text-align: center;">게시판 글 수정 양식</th>
		    	    	</tr>
		    	    	</thead>
				    	<tbody>
				    		<tr>
				    			<td><input type="text" class="form-control" placeholder="글 제목"  name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle()%>"></td>
				    		</tr>
				    		<tr>
				    			<td><textarea class="form-control" placeholder="글 내용"  name="bbsContent" maxlength="2048" style= "height:350px"><%= bbs.getBbsContent()%></textarea></td>
				    		</tr>
			    	</tbody>
    	    		</table>
    	    		<input type="submit" class="btn btn-primary pull-right" value="글수정">
    		</form>
    	    </div>
    </div>
    
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
    
</body>
</html>