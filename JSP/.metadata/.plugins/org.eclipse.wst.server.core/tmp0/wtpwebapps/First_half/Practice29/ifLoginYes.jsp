<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<%
	String user = (String)session.getAttribute("user");
%>
<body>
<form method="POST" action="checker.jsp">
	<%= user %>님 환영합니다.<br><br>
	<input type="submit" value="로그아웃" name="user">
	<input type="hidden" name="action" value="logout">
</form>
</body>
</html>