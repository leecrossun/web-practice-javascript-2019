<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 38</title>
</head>
<body>
<%
session.setAttribute("ID", request.getParameter("username"));
session.setAttribute("PW", request.getParameter("passwd"));
%>
<ddwutag:greeting color="pink"/>
<ddwutag:greeting color="green"/>
</body>
</html>