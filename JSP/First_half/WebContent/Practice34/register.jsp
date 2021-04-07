<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr34.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="login" class="jspbook.pr34.LoginBean" scope="page"></jsp:useBean>
<jsp:setProperty name="login" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<%
String id = login.getId();
String pw = login.getPw();
String email = login.getEmail();
String birth = login.getBirth();
int gen = login.getGender();
// 성별 구하기
String gender;
if (gen==1)
	gender="남성";
else
	gender="여성";
// 생일 구하기
String isGrown;
if (login.isGrownUp()==true)
	isGrown="성인";
else
	isGrown="미성년자";
	
%>
<div align="center">
<h2>등록내용</h2>
이름 : <%= id %> <br>
패스워드 : <%= pw %> <br>
이메일 : <%= email %><br>
성별 : <%= gen %> <br>
생일 : <%= birth %> <br>
<hr>
<%= id %> 씨는 <%= gender %>이고, <%= isGrown %> 입니다.
</div>
</body>
</html>