<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %><%--데이터베이스 접근 객체 가져오기 --%>
<%@ page import="comment.Comment" %>
<%@ page import="comment.CommentDAO" %><%--데이터베이스 접근 객체 가져오기 --%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="viewport" content="width=device-width", initial-scale="1">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

<title>commentUpdate.jsp</title>
</head>
<body>
	<%
		String userID=null;
		if(session.getAttribute("userID")!=null) {
			userID=(String)session.getAttribute("userID");
		}
		int bbsID=0;
		if(request.getParameter("bbsID")!=null) {
			bbsID=Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID==0){
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href='bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		
		int commentID = 0;
		if(request.getParameter("commentID")!=null) {
			commentID=Integer.parseInt(request.getParameter("commentID"));
		}
		Comment comment = new CommentDAO().getComment(commentID);
		
		/* 자신이 쓴 댓글이 아닐떄, 수정버튼을 누른 경우 */
		if(!userID.equals(comment.getUserID())) {
			PrintWriter script=response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		
	%>
	
	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<div class="container">
		<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3" style="background-color: #2e8b57; text-align:center; color:white;">게시판 글 보기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%">글 제목</td>
							<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %>
							</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td colspan="2"><%= bbs.getUserID() %></td>
						</tr>
						<tr>
							<td>작성일자</td>
							<td colspan="2"><%= bbs.getBbsDate().substring(0,11)+bbs.getBbsDate().substring(11,13)+"시"+bbs.getBbsDate().substring(14,16)+"분" %>
							</td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %>
							</td>
						</tr>
						
					</tbody>
				</table>
				
				<form method="post" action="bbs.jsp" style="float:left">
            			<button type="submit" class="btn btn-outline-success">목록</button>
            		</form>
				
				<%-- <%= "commentID : " + request.getParameter("commentID") %> --%>
				
<%-- 			<%
					if(userID != null && userID.equals(bbs.getUserID())){ // 해당 글이 본인이라면 수정과 삭제가 가능
				%>
						<a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-warning">수정</a>
						<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%=bbsID%>" class="btn btn-danger">삭제</a>
				<%
					}
				%> --%>
				
				<br><br><br>
	
<div class="container">
         <div class="row">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
               <tbody>
               <tr>
                  <td align="left" bgcolor="skyblue">댓글</td>
               </tr>
        
     <div class="container">
		<div class="row">
			<form method="post" action="commentUpdateAction.jsp?bbsID=<%=bbsID%>&commentID=<%=commentID%>">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="댓글 쓰기" name="commentContent" maxlength="300" value=<%=comment.getCommentContent() %>></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-success" style="float:left" value="댓글수정">
			</form>
		</div>
	</div>
                  
               
            </table>
	</div>
</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
