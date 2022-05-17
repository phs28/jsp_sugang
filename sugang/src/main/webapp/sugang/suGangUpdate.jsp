<%@page import="vo.SuGangVO"%>
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
	SuGangVO vo = (SuGangVO)request.getAttribute("vo");
	if(vo != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('수정되었습니다.')");
		script.println("location.href='sugang/suGang.jsp'");
		script.println("</script>");
	}
%>
</body>
</html>