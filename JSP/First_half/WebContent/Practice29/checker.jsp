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
<%
	String login = request.getParameter("action");
	if (login.equals("login"))
	{
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		if (name != null && pwd.equals("hatter"))
		{
			session.setAttribute("user", name);
		}
	}
	else if (login.equals("logout"))
	{
		session.invalidate();
	}
%>
<jsp:forward page="index.jsp"/>
</body>
</html>