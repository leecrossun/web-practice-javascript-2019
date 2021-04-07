<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<body>
<%
	String user = (String)session.getAttribute("user");
	if (user == null)
	{
		pageContext.include("ifLoginNo.jsp");
	}
	else
	{
		pageContext.include("ifLoginYes.jsp");
	}
%>
</body>
</html>