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
	String pw = (String)request.getAttribute("pw");
	if(pw != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('삭제 되었습니다')");
		script.println("location.href = 'join/join.jsp'");
		script.println("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('삭제 실패하였습니다.')");
		script.println("location.href = 'join/join.jsp'");
		script.println("</script>");
	}
%>

</body>
</html>