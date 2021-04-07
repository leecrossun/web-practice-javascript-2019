<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
<style>
	* {
		text-align: center;
	}
</style>
</head>
<body>
<%

String name = request.getParameter("name");
String phone = request.getParameter("phone");
String book = name + "," + phone;


ArrayList<String> s = (ArrayList<String>)application.getAttribute("addrbook");
if (s == null)
{
	s = new ArrayList<String>();
	application.setAttribute("addrbook", s);
}

if (book != null)
	{
		s.add(book);
		application.setAttribute("addrbook", s);
	}

%>
<h1>주소록</h1>
<hr>
<%
int i = 1;
for (String value : s) {
	out.println(i + "." + value + "\n");
	i++;
}
%>
</body>
</html>