<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.pr33.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.pr33.AddrManager" scope="application"/>
<% am.add(addr); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
</head>
<body>
<div align="center">
<h1>등록내용</h1>
이름:<jsp:getProperty name="addr" property="username"/><br><br>
전화번호:<jsp:getProperty name="addr" property="tel"/><br><br>
이메일:<jsp:getProperty name="addr" property="email"/><br><br>
성별:<jsp:getProperty name="addr" property="sex"/><br><br>
그룹:<jsp:getProperty name="addr" property="group"/><br><br>
<hr>
<a href="addr_list.jsp">전체 목록 보기</a>
<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</div>
</body>
</html>