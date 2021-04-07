<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr44.*"%>
<jsp:useBean id="am" class="jspbook.pr44.AddrManager" scope="application"/>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>s
<meta charset="UTF-8">
<title>addr_list</title>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a>
<table border="1" width="500">
<tr>
<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td>
</tr>
<c:forEach var="h" items="${am.addrList}">
<tr>
<td>h.username</td>
<td>h.tel</td>
<td>h.email</td>
<td>h.sex</td>
<td>h.group</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>