<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="EUC-KR">
<title>Practice 10</title>
<style>
	table td {
	text-align:center;
	width:80px; height:30px;
	font-weight:900;
	} 
</style>
</head>
<body>
<%
	out.println("<div align=center>");
	out.println("<table border=1px> ");
	out.println("<tr>");
	out.println("<td ><font color=red >일</font></td>");
	
	String s[] = {"월","화","수","목","금"};
	for (int i = 0; i < 5; i++)
		out.println("<th>" + s[i] + "</th>");
	
	out.println("<td><font color=blue >토</font></td>");
	out.println("</tr>");
	
	for (int i = 0; i < 4; i++)
	{
		out.println("<tr>");
		for (int j = 0; j < 7; j++)
			out.println("<td> &nbsp; </td>");
		out.println("</tr>");
	}
	
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>