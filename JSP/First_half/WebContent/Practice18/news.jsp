<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="UTF-8">
<title>news</title>
</head>
<body>
<%
String task1 = request.getParameter("TASK1");
String task2 = request.getParameter("TASK2");

if (task1 == null)
	task1 = "일정없음";
if (task2 == null)
	task2 = "일정없음";

out.println("<h2 align=center >오늘의 일정</h2><hr>");
out.println("<ol>");
out.println("<li>" + task1 +"</li>");
out.println("<li>"+ task2 +"</li>");
out.println("</ol>");
%>
</body>
</html>