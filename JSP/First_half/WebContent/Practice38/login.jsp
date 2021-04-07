<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Tags</title>
</head>
<body>
<form method="POST" action="printing.jsp">
아이디 : <input type="text" name="username"><br><br>
비밀번호 : <input type="text" name="passwd"><br><br>
<input type="submit" value="로그인"> <input type="button" value="취소">
</form>
</body>
</html>