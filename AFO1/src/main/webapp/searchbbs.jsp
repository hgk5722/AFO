<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  </title>

<!-- 링크에 파란불 안들어오게 하기 -->
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {//주어진 userID에 연결된 속성값을 얻어낸다.
			userID = (String) session.getAttribute("userID");
		}
		if (request.getParameter("searchField") == "0" || request.getParameter("searchText") == null || request.getParameter("searchField").equals("0") || request.getParameter("searchText").equals("")) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//현재 페이지가 몇번째 페이지 인가
		int pageNumber = 1;//기본적으로 1페이지
		if (request.getParameter("pageNumber") != null)
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	%>
	
	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<div class="container">
		<div class="row">
			<table class="active table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">번호</th>
						<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">제목</th>
						<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">작성자</th>
						<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">작성일</th>
						<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">조회수</th>
						<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">추천수</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getSearch(request.getParameter("searchField"), request.getParameter("searchText"));
						if (list.size() == 0) {
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("alert('검색결과가 없습니다.')");
							script.println("history.back()");
							script.println("</script>");
						}
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td> <b> <%=list.get(i).getBbsID()%> </b> </td>
						<%--현재 게시글에 대한 정보 --%>
						<td> <b> <a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></a> </b> </td>
						<td> <b> <%=list.get(i).getUserID()%> </b> </td>
						<td> <b> <%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분"%> </b> </td>
						<td> <b> <%=list.get(i).getBbsCount()%> </b> </td>
						<%-- <td><%=list.get(i).getLikeCount()%></td> --%>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<div>
			<form method="post" action="bbs.jsp" style="float:left"> 
            		<button type="submit" class="btn btn-outline-primary">목록</button>	
            </form>
			<%
	    	    	if (pageNumber != 1) {
	    	    %>		<!-- 첫번째 페이지가 아니므로 이전 버튼 생성 -->
	    	    		<a href= "bbs.jsp?pageNumber=<%=pageNumber -1%>" class="btn btn-outline-success"> 이전 </a>
	    	    <% 
	    	    	}	
	    	    if (bbsDAO.nextPage(pageNumber + 1)) {
	    	    %>		<!-- pageNumber를 1 크게한 자기자신을 호출 -> 앞의 if문에서 request로 pageNumber갱신 --> 
	    	    		<a href= "bbs.jsp?pageNumber=<%=pageNumber +1%>" class="btn btn-outline-success"> 다음 </a>
	    	    <% 
	    	    	}
	    	    %>
	    	    
			</div>
			<%-- <div class=container style="text-align: center">
				<%
					if (pageNumber != 1) { //이전페이지로
				%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>">◀ 이전</a>
				<%
					}
				%>
				<%
					int n = (int) (bbsDAO.getCount() / 10 + 1);
					for (int i = 1; i <= n; i++) {
				%>
				<a href="bbs.jsp?pageNumber=<%=i%>">|<%=i%>|
				</a>
				<%
					}
				%>
				<%
					if (bbsDAO.nextPage(pageNumber + 1)) { //다음페이지가 존재하는ㄱ ㅏ
				%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>">다음 ▶</a>
				<%
					}
				%>
				<!-- <a href="write.jsp" class="btn btn-success pull-right">글쓰기</a> -->
			</div> --%>

		</div>
	</div>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>