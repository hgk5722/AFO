<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 목록 </title>

<style>


  table {
    border-collapse: collapse;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    
  }

  td {
    
    width: 200px;
    height: 200px;
    text-align: center;
    vertical-align: middle;
  }
  
  
</style>

</head>
<body>
	<!-- 공통 네비게이션 바  -->
	<%@ include file="fix/header.jsp" %>
	
	<table>
	  <tr>
	    <td> <button style="width: 200px; height: 200px;" type="button" onclick="location.href='bbs.jsp'" class="btn btn-outline-dark"> 통합 게시판</button> </td>
	    <td> <button style="width: 200px; height: 200px;" type="button" onclick="location.href='bbs_movie.jsp'" class="btn btn-outline-dark"> 영화 </button>  </td>
	    <td> <button style="width: 200px; height: 200px;" type="button" onclick="location.href='bbs_drama.jsp'" class="btn btn-outline-dark"> 드라마 </button>   </td>
	  </tr>
	  <tr>
	    <td> <button style="width: 200px; height: 200px;" type="button" onclick="location.href='bbs_webtoon.jsp'" class="btn btn-outline-dark"> 웹툰 </button>   </td>
	    <td>내용</td>
	    <td>내용</td>
	  </tr>
	  <tr>
	    <td>내용</td>
	    <td>내용</td>
	    <td>내용</td>
	  </tr>
	</table>
	
	
	
</body>
</html>