<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr33.*"%>
<jsp:useBean id="am" class="jspbook.pr33.AddrManager" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list_group</title>
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
String[] g = {"가족","친구","직장"};

for (int i = 0; i < g.length; i++)
{
 for (AddrBean ab : am.getAddrList())
 {
	if (ab.getGroup().equals(g[i]))
	{
		out.println("<tr>");
		out.println("<td>" + ab.getUsername() + "</td>");
		out.println("<td>" + ab.getTel() + "</td>");
		out.println("<td>" + ab.getEmail() + "</td>");
		out.println("<td>" + ab.getSex() + "</td>");
		out.println("<td>" + ab.getGroup() + "</td>");
		out.println("</tr>");	
	}
 }
}
%>
</table>
</div>
</body>
</html>