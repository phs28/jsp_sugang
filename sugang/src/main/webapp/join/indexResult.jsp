<%@page import="vo.JoinVO"%>
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
<%
	JoinVO vo = (JoinVO) session.getAttribute("vo");
	if(vo != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 되었습니다.')");
		script.println("location.href = 'join/login.jsp'");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 실패하였습니다.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	}
%>
</body>
</html>