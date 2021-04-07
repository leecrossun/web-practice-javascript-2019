<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action</title>
</head>
<body>
<h1 align=center>forward 액션 연습</h1><hr>
<jsp:forward page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University"/>
	<jsp:param name="date" value="2011/04/05"/>
</jsp:forward>
</body>
</html>