<%@ tag language="java" pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="jspbook.pr39.LoginBean" scope="page"></jsp:useBean>
<jsp:setProperty name="login" property="*"/>
<%@ attribute name="brd" %>
<%@ attribute name="color" %>
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
	isGrown="성인입니다.";
else
	isGrown="성인이 아닙니다.";
	
%>
<div align=center>
<h2><jsp:doBody/></h2>
<table width=300 height=300 border="${brd}" bgcolor="${color}" style="text-align:center">
<tr>
<td>이름 : </td>
<td width=200><%= id %></td></tr>
<tr>
<td>패스워드 : </td>
<td width=200><%= pw %></td></tr>
<tr>
<td>이메일 : </td>
<td width=200><%= email %></td></tr>
<tr>
<td>성별 : </td>
<td width=200><%= gender %></td></tr>
<tr>
<td>생일 : </td>
<td width=200><%= birth %></td></tr>
<tr>
<td colspan=2 ><%= id %> 씨는 <%= gender %> 이고, <%= isGrown %></td>
</tr>
</table>
</div>