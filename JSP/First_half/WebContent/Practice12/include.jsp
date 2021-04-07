<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="UTF-8">
<title>Practice 12</title>

</head>
<body>
<%
out.println("<h1 align=center>include 지시어 연습</h1><hr>");
out.println("<center>");
out.println("<table id=include>");
out.println("<tr>");
out.println("<td>");
%>
<%@ include file="calendar.jsp" %>
<% 
out.println("</td>");
out.println("<td width=30px></td>");
out.println("<td>");
%>
<%@ include file="news.jsp" %>
<% 
out.println("</td>");
out.println("</tr>");
out.println("</table>");
out.println("</center>");
%>
</body>
</html>