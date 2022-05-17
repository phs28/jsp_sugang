<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>logout.jsp</h1>
<%
	session.invalidate();
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그아웃 되었습니다.')");
	script.println("location.href = '../index.jsp'");
	script.println("</script>");
%>
</body>
</html>