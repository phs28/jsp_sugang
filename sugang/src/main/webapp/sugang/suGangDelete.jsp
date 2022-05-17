<%@page import="vo.SuGangVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String stnum = (String)request.getAttribute("stnum");
		if(stnum != null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('해당 학번정보가 삭제 되었습니다')");
			script.println("location.href = 'sugang/suGang.jsp'");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('해당 학번정보는 대상이 아닙니다.')");
			script.println("location.href = 'sugang/suGang.jsp'");
			script.println("</script>");
		}
%>
</body>
</html>