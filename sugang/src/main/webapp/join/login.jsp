<%@page import="vo.JoinVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style type="text/css">
section article{
	float:left;
	width:250px;
	height:220px;	
	margin:5px;
	padding:10px;	
	border:1px solid #ccc;
}
.at1, .at2, .at3 {
	padding-left: 40px;
	margin-top: 358px;
	transition: 2s
}
.at1:hover{
	background-color: red;
	border:1px solid green;
}
.at2:hover{
	background-color: blue;
	border:1px solid blue;
}
.at3:hover{
	background-color: green;
	border:1px solid purple;
}
.at3 {
	text-align: left;
	margin-top: 20px;
	padding-left: 210px;
	padding-right: 150px;
}
.z {
	font-size: 30px;
}
</style>
<link href="../join/login.css" type="text/css" rel="stylesheet"/>
<script src="http://code.jquery.com/jquery-1.7.min.js"></script>
<script>
$.getJSON('http://api.openweathermap.org/data/2.5/weather?id=1835848&appid=95deb816c2fe8e37da525918e9897634&units=metric', function(data) {
    
    var $minTemp = data.main.temp_min;
    var $maxTemp = data.main.temp_max;
    var $cTemp = data.main.temp;
    var $wicon = data.weather[0].icon;
    var $now = new Date($.now());
    var $cDate = $now.getFullYear() + '/' + ($now.getMonth() + 1) + '/' + $now.getDate() + '/' + $now.getHours() + '/' + $now.getMinutes();

    $('.ctemp').append($cTemp);
    $('.clowtemp').append($minTemp);
    $('.chightemp').append($maxTemp);
    $('.wicon').append($wicon);
    $('.cicon').append('<img src="http://openweathermap.org/img/w/' + $wicon + '.png"/>');
    $('h2').prepend($cDate);
});
</script>
</head>
<div id="wrapper">
	<div class="container">
 	 <header>
	    <h1>수강신청 사이트</h1>
	    <img alt="배경" src="../image/headerimg.webp" width="1020px">
 	 </header>  
    <nav class="navi">
      <ul>
      	<li><a href="#">홈으로</a></li>
        <li><a href="../join/useHomepage.jsp" onclick="alt()">이용방법</a></li>
        <li><a href="../sugang/suGang.jsp"    onclick="alt()">수강신청</a></li>
        <li><a href="../sugang/suUpdate.jsp"  onclick="alt()">수강수정</a></li>
        <li><a href="../board/writer.html"  onclick="alt()">게시판</a></li>
      </ul>
    </nav>
 	</div>
      <aside class="sidebar">
    	<form action="<%= request.getContextPath() %>/join?choice=login" method="post">
		<ul>
			<li class="z">
				<%
					JoinVO vo = (JoinVO)session.getAttribute("vo");
				%>
				<%= vo.getId() %>님 <br> 
					환영합니다
			</li>
			<br>
		</ul>
	</form>
	<form action="logout.jsp" method="post">
		<input class="f" type="submit" value="로그아웃">
	</form>
    </aside>
    <section>
 		<article class="at1">
 			<h3>공지사항</h3>
 			 <a href="">수강신청 날짜</a> <br><br>
 			 <a href="">수강신청시 주의할점</a> <br><br>
 			 <a href="">중간고사 일정</a> <br><br>
 			 <a href="">학교행사 일정</a> <br><br>
 		</article>
 		<article class="at2">
 			<h1 class="z">공부는 훈수</h1>
 		</article>
 		<article class="at3">
 			<h2> <br>- 날씨 정보</h2>
			<div class="ctemp">현재 온도: </div> 
			<div class="clowtemp">최저 온도: </div>
			<div class="chightemp">최고 온도: </div>
			<div class="cicon">날씨상황 :  </div>
 		</article>   
    </section>
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