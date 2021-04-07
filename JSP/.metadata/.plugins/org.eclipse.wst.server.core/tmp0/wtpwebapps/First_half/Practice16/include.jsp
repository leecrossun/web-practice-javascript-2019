<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include action</title>
<style>
	* {
		text-align:center;
	}
</style>
</head>
<body>
<h1 align=center>include 액션 연습</h1><hr>
<jsp:include page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University"/>
	<jsp:param name="date" value="2011/04/05"/>
</jsp:include>
</body>
</html>