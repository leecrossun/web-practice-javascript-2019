<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.pr45.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.pr45.AddrManager" scope="application"/>
<%
	am.add(addr);
	am.addGrouping(addr);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>등록 내용</h2>
	이름: <%=addr.getUsername() %><p>
	전화번호: <%=addr.getTel() %><p>
	이메일: <%=addr.getEmail() %><p>
	성별: <%=addr.getSex() %><p>
	그룹: <jsp:getProperty property="group" name="addr"/><p>
</div>
<hr>
<a href="Addr_list.jsp">전체 목록 보기</a>
<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</body>
</html>