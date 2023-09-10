<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.JjimDAO"%>
<%@ page import="bbs.Jjim"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.lang.Math" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">

<title>찜 목록</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1; //기본페이지
		if (request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber")); //파라미터는 꼭 이런식으로 바꿔줘야됨
		}
	%>
	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<div class="container">
		<h1>북마크<br></h1>
		<p><%=userID %>님이 북마크하신 목록입니다.<br><br></p>

		<div class="container">
			<div class="row">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeee; text-align: center;">번호</th>
							<th style="background-color: #eeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeee; text-align: center;">작성자</th>
							<th style="background-color: #eeeee; text-align: center;">작성일</th>
						</tr>
					</thead>
					<tbody>
						<%
							JjimDAO jjimDAO = new JjimDAO();
							ArrayList<Bbs> list = jjimDAO.getList(userID, pageNumber);
							for(int i=0; i < list.size(); i++){	
						%>
						<tr>
							<td><%= list.get(i).getBbsID() %></td>
							 <td> <%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>  
							<td><%= list.get(i).getUserID() %></td>
							<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
				
			</div>
		</div>
	</div>	
	
	
</body>
</html>