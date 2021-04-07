<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr45.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.pr45.AddrManager" scope="application"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>주소록(그룹별 보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a>
<table border="1" width="500">
	<tr>
		<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td>
	</tr>
	<%
		for(AddrBean ab : am.getAddrGroupList()){
	%>
	<tr>
		<td><%=ab.getUsername() %></td>
		<td><%=ab.getTel() %></td>
		<td><%=ab.getEmail() %></td>
		<td><%=ab.getSex() %></td>
		<td><%=ab.getGroup() %></td>
	<%
		}
	%>
	
	</tr>
</table>
</div>
</body>
</html>