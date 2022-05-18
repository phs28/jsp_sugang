<%@page import="vo.SuGangVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choice</title>
<style type="text/css">
	tr, td {
		padding: 15px;
		text-align: center;
		font-size: 20px;
	}
	table {
		margin-left: 100px;
		margin-top: 400px;
		margin-bottom: 300px;
	}
	#f {
		margin-top: -200px;
		margin-bottom: 150px;
	}
</style>
<link href="join/login.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div id="wrapper">
	<div class="container">
 	 <header>
	    <h1>수강신청 사이트</h1>
	    <img alt="배경" src="image/headerimg.webp" width="1020px">
 	 </header>  
    <nav class="navi">
      <ul>
      	<li><a href="join/login.jsp">홈으로</a></li>
        <li><a href="join/useHomepage.jsp">이용방법</a></li>
        <li><a href="sugang/suGang.jsp">수강신청</a></li>
        <li><a href="sugang/suUpdate.jsp">수강수정</a></li>
      </ul>
    </nav>
 	</div>
<%
	SuGangVO vo = (SuGangVO)request.getAttribute("vo");
	if(vo != null) {
%>
<%
 	String sub1 = (vo.getSubject1() != null) ? vo.getSubject1() : "국어 선택안함";
 	String sub2 = (vo.getSubject2() != null) ? vo.getSubject2() : "수학 선택안함";
 	String sub3 = (vo.getSubject3() != null) ? vo.getSubject3() : "영어 선택안함";
 	String sub4 = (vo.getSubject4() != null) ? vo.getSubject4() : "역사 선택안함";
 	String sub5 = (vo.getSubject5() != null) ? vo.getSubject5() : "과학 선택안함";
%>
	<h3>신청 수강 과목</h3>
	<table border="1">
		<tr>
			<td>학번<td>학년<td>선택과목<td>선택과목<td>선택과목<td>선택과목<td>선택과목
		</tr>
		<tr>
			<td><%= vo.getStnum() %><td><%= vo.getGrade() %><td><%= sub1 %>
			<td><%= sub2 %><td><%= sub3 %><td><%= sub4 %><td><%= sub5 %>
		</tr>
	</table>
<% 
	} else { 
%>	
	<script type="text/javascript">
		alert('조회 불가능한 학번을 입력하였습니다.');
		location.href = "sugang/suGang.jsp";
	</script>
<% 
	}
%>
	<form action="<%= request.getContextPath() %>/SuGang?choice=delete" method="post">
	<fieldset id="f">
		<legend>수강정보 삭제</legend>
		학번 입력: <input type="text" name="stnum">
		<input type="submit" value="삭제">
	</fieldset>
	</form>
	<footer>
    	<address>
    		<p>어느 시골마을 인적이 드문 한적한 곳 
    		<p>www.amutenhomepage.ko.kr
    	</address>
    	<p>copyright @ All rights reserved.
    </footer>
</div>
</body>
</html>