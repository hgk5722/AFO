<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="comment.Comment" %>
<%@ page import="comment.CommentDAO" %> <%--데이터베이스 접근 객체 가져오기 --%>
<%@ page import="bbs.JjimDAO" %>
<%@ page import="bbs.Jjim" %>


<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<!-- <link rel="stylesheet" href="css/bootstrap.css"> 참조  -->

<title> AFO 전체 게시판 </title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


</head>
<body>
<%
    String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
    if (session.getAttribute("userID") != null) {
        userID = (String)session.getAttribute("userID"); // userID는 로그인할때 세션에 저장된 아이디
    }
    
    int bbsID = 0;
    if (request.getParameter("bbsID") != null) {
        bbsID = Integer.parseInt(request.getParameter("bbsID")); // bbsID는 게시판 번호
    }
    else if (bbsID == 0) // bbs.jsp에서 게시판 번호사 제대로 넘어오지 않았을 때
    {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다')");
        script.println("location.href = 'bbs.jsp'"); // 다시 되돌아감
        script.println("</script>");
    }
    Bbs bbs = new BbsDAO().getBbs(bbsID);
    
    /* 의미가 없음 */
    int commentID = 0;
	if(request.getParameter("commentID") != null) {
		commentID = Integer.parseInt(request.getParameter("commentID"));
	}
	Comment comment = new CommentDAO().getComment(commentID);
    
%>
    	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	
	
	
    <div class="container">
        <div class="row">
            <table class="table table-striped" style=" border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th colspan="3" style="background-color:#eeeeee; text-align:center;">게시판 글 보기</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width:20%; text-align:center;">글 제목</td>
                        <td colspan="2" style="text-align:center; "><%= bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>                  
                    </tr>
                    <tr>
                        <td style="text-align:center; ">작성자</td>
                        <td colspan="2" style="text-align:center; "><%= bbs.getUserID().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></td>
                    </tr>
                    <tr>
                        <td style="text-align:center; ">작성일자</td>
                        <td colspan="2" style="text-align:center; "><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13) + "시" 
                                + bbs.getBbsDate().substring(14,16) + "분"  %>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align : middle; text-align:center; ">내용</td>
                        <td colspan="2" style=" text-align:match-parent;">
                        <!-- 특수문자를 제대로 출력하기위해 & 악성스크립트를 방지하기위해 -->
                        <%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %>
                        </td>    
                    </tr>
                    
                    <tr>
							<td style="text-align:center; ">조회수</td>
							<td colspan="2" style="text-align:center; "><%= bbs.getBbsCount()+1 %></td>
					</tr>
                    
                </tbody>
            </table>
            
            <!-- 목록, 수정, 삭제 버튼 -->
            <div>
            <form method="post" action="bbs.jsp" style="float:left"> 
            		<button type="submit" class="btn btn-outline-primary">목록</button>	
            </form>
            <%
                if(userID != null && userID.equals(bbs.getUserID())) // 작성자 아이디와 접속한 아이디가 일치할때 수정, 삭제 버튼이 보이도록 함
                {
            %>
            	<form method="post" action="update.jsp?bbsID=<%=bbsID %>" style="float:left"> <!-- update.jsp 파일로 아이디 전송 -->
            		<button type="submit" class="btn btn-outline-success">수정</button>
            	</form>
            	
            	<form method="post" action="deleteAction.jsp?bbsID=<%=bbsID %>" style="float:left"> <!-- deleteAction.jsp 파일로 아이디 전송 -->
            		<button type="submit" class="btn btn-outline-danger">삭제</button>
            	</form>
            	
            
            <%     
                }
            %>
            
        <%	JjimDAO jjimDAO = new JjimDAO();
		ArrayList<Jjim> list1 = jjimDAO.getJjim(userID, bbsID);
		if (list1.isEmpty()) { %>
			<%-- <td align="right" bgcolor="beige"><button onclick = "location.href='jjimAction.jsp?bbsID=<%=bbsID%>'">찜하기</button></td> --%>
			<button type="button" class="btn btn-outline-danger" onclick = "location.href='jjimAction.jsp?bbsID=<%=bbsID%>'"> 찜하기 </button>
		<%	}
		else { %>
			<%-- <td align="right" bgcolor="beige"><button onclick = "location.href='jjimAction.jsp?bbsID=<%=bbsID%>'">찜해제</button></td> --%>
			<button type="button" class="btn btn-outline-danger" onclick = "location.href='jjimAction.jsp?bbsID=<%=bbsID%>'"> 찜해제 </button>
		<%	
			}
		%>
			
          </div>
            
        </div>
    </div>
    
    <br>
    
    <!-- 댓글 기능 -->
    <div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<tbody>
					<tr>
						<td align="left" bgcolor="skyblue">댓글</td>
					</tr>
					<tr>
						<%
							CommentDAO commentDAO = new CommentDAO();
							ArrayList<Comment> list = commentDAO.getList(bbsID);
							for (int i = 0; i < list.size(); i++) {
						%>
						<div class="container">
							<div class="row">
								<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
									<tbody>
										<tr>          <!-- 왼쪽과 오른쪽으로 작성자 이름과 작성시간 출력 -->
											<td align="left"><%=list.get(i).getUserID()%></td>
											<td align="right"><%=list.get(i).getCommentDate().substring(0, 11) + list.get(i).getCommentDate().substring(11, 13)
				+ "시" + list.get(i).getCommentDate().substring(14, 16) + "분"%></td>
										</tr>
	
										<tr>
											<!-- 게시글 내용은 왼쪽으로 수정과 삭제는 오른쪽으로 -->
											<td align="left"><%=list.get(i).getCommentContent()%></td>
											
											
											
											
											<td align="right">
												<a href="commentUpdate.jsp?bbsID=<%=bbsID%>&commentID=<%=list.get(i).getCommentID()%>" class="btn btn-warning">수정  </a> 
												<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="commentDeleteAction.jsp?bbsID=<%=bbsID%>&commentID=<%=list.get(i).getCommentID()%>" class="btn btn-danger">삭제  </a>
											</td>
											
											
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<%
							}
						%>
					</tr>
			</table>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<form method="post" action="submitAction.jsp?bbsID=<%= bbsID %>">
				<table class="table table-bordered"
					style="text-align: center; border: 1px solid #dddddd">
					<tbody>
						<tr>
							<td align="left"><%= userID %></td>
						</tr>
						<tr>
							<!-- 이 부분 조금 더 크게 수정할것. -->
							<td><input type="text" class="form-control"
								placeholder="댓글 쓰기" name="commentContent" maxlength="300"></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-success pull-right" value="댓글 쓰기">
			</form>
		</div>
	</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    

</body>
</html>