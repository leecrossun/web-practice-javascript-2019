<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
   <!--문헌정보학과 20170581 이효선
    웹브라우저 최적화 : 크롬 브라우저-->
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<h1>전달된 파라미터 이름들</h1>
<br>
<%
Enumeration<String> e = request.getParameterNames();
while (e.hasMoreElements())
{
	out.println(e.nextElement() + "<br>");
}
out.println("<hr>타입 : " + request.getParameter("type"));
out.println("<br>아이디 : " + request.getParameter("strID"));
out.println("<br>패스워드 : " + request.getParameter("strPwd"));
%>
</body>
</html>