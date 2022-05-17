<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	form ul {
		list-style:none;
	}
	li label {
			width:120px;
			float:left;
			text-align:right;
			padding-right:8px;
	}
	fieldset {
		margin-right: 300px
	}
	
	.q {
		margin-left: 420px;
	}
</style>
</head>
<body>
	<form action="<%= request.getContextPath() %>/join?choice=actionDo" method="post">
		<fieldset>
			<legend>학생등록</legend>
			<ul>
				<li>
					<label for="a">이름</label>
					<input type="text" name="name" id="a" placeholder="name"> <br><br>
				</li>
				<li>
					<label for="b">ID</label>
					<input type="text" name="id" id="b" placeholder="id" > <br><br>
				</li>
				<li>
					<label for="c">PW</label>
					<input type="password" name="pw" id="c" placeholder="pw"> <br><br>
				</li>
				<li>
					<label for="d">성별</label>
					<input type="radio" name="sex" id="d" value="man">남
					<input type="radio" name="sex" id="d" value="woman">여 <br><br>
				</li>
				<li>
					<label for="e">나이</label>
					<input type="number" name=age id="e" placeholder="age"> <br><br>
				</li>
				<li>
					<label for="f">전화번호</label>
					<input type="text" name="phone" id="f" placeholder="phone">
				</li>
			</ul>
			<input class="q" type="submit" value="가입"><button type="button" onclick="location.href='../index.jsp' ">취소</button>
		</fieldset>
	</form>
	<form action="<%= request.getContextPath() %>/join?choice=delete" method="post">
		<fieldset>
			<legend>학생기록삭제</legend>
			<label for="g">delete</label>
			<input type="text" name="pw" id="g">
			<input type="submit" value=삭제>
		</fieldset>
	</form>
</body>
</html>