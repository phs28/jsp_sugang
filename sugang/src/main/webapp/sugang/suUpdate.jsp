<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강정보 수정</title>
<style>
	ul {
		list-style: none;
	}
	li label {
		width:120px;
		float:left;
		text-align:right;
		padding-right:8px;
	}
	
	button[type="button"] {
		margin-left: 60px;
	}
	table, tr, td {
		padding: 15px;
		text-align: center;
		font-weight: 10px;
	}
	.h {
		margin-left: 670px;
	}
	fieldset{
		font-size: 20px;
		padding-left: 150px;
	}
	.g {
		margin-bottom: 30px;
	}
</style>
<link href="../join/login.css" type="text/css" rel="stylesheet">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
      $(document).ready(function() {
          $("input[type='checkbox']").on("click", function(){
              let count = $("input:checked[type='checkbox']").length;
                 if(count > 3) {
                  	$(this).prop("checked", false);
                   	alert("3과목 초과 수강불가");
              	 }
           });
       });
</script>
</head>
<body>
<div id="wrapper">
 	 <header>
	    <h1>수강신청 사이트</h1>
	    <img alt="배경" src="../image/headerimg.webp" width="1020px">
 	 </header>  
    <nav class="navi">
      <ul>
      	<li><a href="../join/login.jsp">홈으로</a></li>
        <li><a href="../join/useHomepage.jsp">이용방법</a></li>
        <li><a href="../sugang/suGang.jsp">수강신청</a></li>
        <li><a href="#">수강수정</a></li>
        <li><a href="../board/writer.html">게시판</a></li>
      </ul>
    </nav> 
	<form action="<%= request.getContextPath() %>/SuGang?choice=update" method="post">
		<fieldset>
			<legend>수강정보 수정</legend>
			<ul>
				<li>
					<label for="b">학번</label>
					<input type="text" name="stnum" id="b"> <br><br>
				</li>
				<li>
					<label for="c">학년</label>
					<input type="radio" name="grade" id="c" value="1학년">1학년
					<input type="radio" name="grade" id="c" value="2학년">2학년
					<input type="radio" name="grade" id="c" value="3학년">3학년
					<input type="radio" name="grade" id="c" value="4학년">4학년 <br><br>
				</li>				
			</ul>
		</fieldset>
		<fieldset class="g">
		<table border="1">
			<tr>
				<td>선택<td>과목이름<td>강의장<td>학점<td>온라인여부<td>이수구분
			</tr>
			<tr>
				<td><input type="checkbox" name="subject1" value="국어"><td>국어
				<td>본교 a동 104호<td>3<td>Y<td>교필
			</tr>
			<tr>
				<td><input type="checkbox" name="subject2" value="수학"><td>수학
				<td>본교 a동 208호<td>3<td>N<td>교선
			</tr>
			<tr>
				<td><input type="checkbox" name="subject3" value="영어"><td>영어
				<td>본교 b동 303호<td>3<td>Y<td>교필
			</tr>
			<tr>
				<td><input type="checkbox" name="subject4" value="역사"><td>역사
				<td>본교 b동 302호<td>3<td>Y<td>교선
			</tr>
			<tr>
				<td><input type="checkbox" name="subject5" value="과학"><td>과학
				<td>본교 c동 408호<td>3<td>N<td>교선
			</tr>
		</table> <br>
		<input class="h" type="submit" value="수정">
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