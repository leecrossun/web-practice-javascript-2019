<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="UTF-8">
<title>include_action</title>
</head>
<body>
<%
out.println("<h1 align=center>Include Action Practice</h1><hr>");
out.println("<center>");
out.println("<table id=include>");
out.println("<tr>");
out.println("<td>");
%>
<jsp:include page="Calendar.jsp"/>
<%--<jsp:param name="YEAR" value="2018"/>
<jsp:param name="MONTH" value="7"/>
--%>
<% 
out.println("</td>");
out.println("<td width=30px></td>");
out.println("<td>");
%>
<jsp:include page="news.jsp"/>
<%--<jsp:param name="TASK2" value="homework"/> --%>
<% 
out.println("</td>");
out.println("</tr>");
out.println("</table>");
out.println("</center>");
%>
</body>
</html>