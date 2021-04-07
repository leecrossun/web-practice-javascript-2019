<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<body>
<form method="POST" action="checker.jsp">
	아이디 : <input type="text" name="name" ><br><br>
	패스워드 : <input type="text" name="pwd"><br><br>
	<input type="submit" value="로그인" name="user">
	<input type="hidden" name="action" value="login">
</form>
</body>
</html>