<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object: 02</title>
</head>
<body>
<%
	session.setAttribute("ID", request.getParameter("username"));
	
	int set = 60 * Integer.parseInt(request.getParameter("time"));
	session.setMaxInactiveInterval(set);
	
	Integer count = (Integer)application.getAttribute("count");
	
	if (count == null)
		count = 0;

		count++;
		application.setAttribute("count", count);
%>
<%= session.getAttribute("ID") %>님 환영합니다. <br><br>
세션 ID : <%= session.getId() %><br>
세션 지속시간(default) : <%= session.getMaxInactiveInterval() %>초<br><br>
오늘의 접속자수 : <%= count %>
</body>
</html>