<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.JoinVO"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	JoinVO vo = (JoinVO)request.getAttribute("vo");
	if(vo != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");	
		script.println("alert('학생 등록되었습니다.')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");	
		script.println("alert('학생 등록 실패했습니다.')");
		script.println("location.href = 'join/join.jsp'");
		script.println("</script>");
	}
%>
</body>
</html>