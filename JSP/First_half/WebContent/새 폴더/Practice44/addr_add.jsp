<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr44.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="addr" class="jspbook.pr44.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="jspbook.pr44.AddrManager" scope="application"/>
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

이름:<c:out value ="${addr.username}"/><br><br>
전화번호:<c:out value ="${addr.tel}"/><br><br>
이메일:<c:out value ="${addr.email}"/><br><br>
성별:<c:out value ="${addr.sex}"/><br><br>
그룹:<c:out value ="${addr.group}"/><br><br>
<hr>
<a href="addr_list.jsp">전체 목록 보기</a>
<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</div>
</body>
</html>