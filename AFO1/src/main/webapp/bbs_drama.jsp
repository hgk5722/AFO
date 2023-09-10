<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 드라마 게시판 </title>

<!-- 링크에 파란불 안들어오게 하기 -->
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


</head>
<body>
	<% 
	    String userID = null;
	    if (session.getAttribute("userID") != null){
	        userID = (String) session.getAttribute("userID");
	    }
	    int pageNumber = 1; // 기본 페이지로 1을 설정
	    if (request.getParameter("pageNumber") != null){
	    	pageNumber = Integer.parseInt(request.getParameter("pageNumber")); // 가져온 pageNumber를 정수형으로 변화해서 저장
	    }
    %>
    
    <!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<div class= "container">
	    	<div= "row">
	    	    <table class= "table table-stripped" style= "text-align: center; boarder: 1px solid #dddddd">
	    	    	<thead>
	    	    	<tr>
	    	    		<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">번호</th>
	    	    		<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">제목</th>
	    	    		<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">작성자</th>
	    	    		<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">작성일</th>
	    	    		<th style= "background-color: #000000; text-align: center; color:#F4FFFF;">조회수</th>
	    	    	</tr>
	    	    	</thead>
	    	    	<tbody>
	    	    		<tr>
	    	    			<%
	    	    				BbsDAO bbsDAO = new BbsDAO(); // 영화 데이터만 가져오도록 해야함.
	    	    				ArrayList<Bbs> list = bbsDAO.getList_drama(pageNumber); // list는 현재의 pageNumber에서 가져온 게시글 리스트가 된다.
	    	    				for (int i = 0; i < list.size(); i++) { // list크기 만큼 반복(getList()의 쿼리가 10개까지 잘라서 사이즈는 항상 10이다.)
	    	    			%>
	    	    			<tr>
	    	    				<td> <b> <%= list.get(i).getBbsID() %> </b> </td> <!-- 현재 게시글의 게시판 번호 -->
	    	    				<td style="background-color:#dcdcdc"> <b> <a href ="view.jsp?bbsID=<%= list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") %></a> </b> </td>
	 <!-- 제목을 누를 때는 해당 게시글의 내용을 보여주는 페이지로 넘어가야 하기에 view.jsp페이지로 해당 게시글 번호를 bbsID변수로 보내줌. 그래서 <a>태그안에 있음 -->   
	    	    				<td> <b> <%= list.get(i).getUserID() %> </b> </td> <!-- 작성자(userID) -->
	    	    				<td> <b> <%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분" %> </b> </td> <!-- 시간표현 -->
	    	    				<td> <b> <%=list.get(i).getBbsCount()%> </b> </td> <!-- 표에 카운트 추가 -->
	    	    			</tr>
	    	    			<%
	    	    				}
	    	    			%>
	    	    		</tr>
	    	    			
	    	    	</tbody>
	    	    </table>
	    	    
	    	    <%
	    	    	if (pageNumber != 1) {
	    	    %>		<!-- 첫번째 페이지가 아니므로 이전 버튼 생성 -->
	    	    		<a href= "bbs.jsp?pageNumber=<%=pageNumber -1%>" class="btn btn-outline-success">이전</a>
	    	    <% 
	    	    	}	
	    	    if (bbsDAO.nextPage(pageNumber + 1)) {
	    	    %>		<!-- pageNumber를 1 크게한 자기자신을 호출 -> 앞의 if문에서 request로 pageNumber갱신 --> 
	    	    		<a href= "bbs.jsp?pageNumber=<%=pageNumber +1%>" class="btn btn-outline-success">다음</a>
	    	    		
	    	    <% 
	    	    	}
	    	    %>
	    	    <a href= "write_drama.jsp" class="btn btn-primary" style="color : #F4FFFF;" > 토론방 생성 </a>
	    	</div>
	</div>
	
	
	
	
</body>
</html>