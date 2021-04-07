<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr47.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.*" %>
<jsp:useBean id="bean" class="jspbook.pr47.LectureBean"/>
<jsp:useBean id="manager" class="jspbook.pr47.LectureManager" scope="session"/>
<jsp:setProperty property="*" name="bean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
	* {
		text-align: center;
	}
table{
	border-collapse:collapse;
	width:60%;
	height:100px;
	text-align:center;
}
table, td, th{
	border:solid 1px;
	width:500px;
	height:50px;
	font-size:13px;
}
#major {
	background-color: #ffe082;
}
#major_select {
	background-color: #b2ccff;
}
#refinement {
	background-color: #bdbdbd;
}
</style> 
</head>
<body>
<form action="Practice47.jsp" method="post">
<%
String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
String[] titleNames = {"웹프로그래밍","운영체제","소프트웨어프로그래밍","데이터베이스개론","자료구조","네트워크","창의와감성","사회봉사"};
String[] days = {"월","화","수","목","금","토"};

int i;
out.println("과목타입: <select name=\"type\">");
for (i=0;i<typeNames.length;i++)
	out.println("<option value="+i+">"+typeNames[i]+"</option>");
out.println("</select>");

out.println("과목명: <select name=\"title\">");
for (i=0;i<titleNames.length;i++)
	out.println("<option value="+i+">"+titleNames[i]+"</option>");
out.println("</select>");

out.println("요일: <select name=\"day\">");
for (i=0;i<days.length;i++)
	out.println("<option value="+i+">"+days[i]+"</option>");
out.println("</select>");

out.println("시간: <select name=\"time\">");
for (i=1;i<7;i++)
	out.println("<option value="+i+">"+i+"</option>");
out.println("</select>");

out.println("연강여부: <select name=\"consecutive\">");
for (i=1;i<7;i++)
	out.println("<option value="+i+">"+i+"</option>");
out.println("</select>");
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="등록">
<hr>
</form>
<%
// 파라미터 값 받기

String type = request.getParameter("type");
String title = request.getParameter("title");
String day = request.getParameter("day");
String time = request.getParameter("time");
String consecutives = request.getParameter("consecutive");

if (type != null && title != null && day != null && time != null && consecutives != null)
{
	manager.add(bean);
	manager.buildMatrix();
}

System.out.println("typeMatrix");
LectureManager.printMatrix(manager.getTypeMatrix());
System.out.println("titleMatrix");
LectureManager.printMatrix(manager.getTitleMatrix());
System.out.println("spanMatrix");
LectureManager.printMatrix(manager.getSpanMatrix());
%>
<%
int[][] lectureType = manager.getTypeMatrix();
int[][] consecutive = manager.getSpanMatrix();manager.getTitleMatrix();
int[][] lectureTitle = manager.getTitleMatrix();
%>
<div align=center><h3>강의 시간표</h3>
<table align="center">
<%
out.println("<tr><th style='font-size:20px; font-weight:bold'>2학년</th>");
for(i=0; i<days.length-1; i++)
	out.println("<th style='font-size:20px; font-weight:bold'>"+days[i]+"</th>");
out.println("</tr>");

for(i=0; i<6; i++)
{
	out.println("<tr><td style='font-size:20px; font-weight:bold'>");
	out.print(i+1 + "</td>");
	for(int j=0; j<5; j++)
	{
		switch(lectureType[i][j])
		{
		case 1:
			out.print("<td id=major");
			break;
		case 2:
			out.print("<td id=major_select");
			break;
		case 3:
			out.print("<td id=refinement");
			break;
		default:
			out.print("<td");
		}
		if(consecutive[i][j]==1)
		{
			out.println(">");
		}
		else if(consecutive[i][j] != 0)
		{
			out.println(" rowspan='" + consecutive[i][j] + "'>");
		}
		if(lectureTitle[i][j]==-1)
		{
			out.println("&nbsp;");
		}
		else
		{
			out.println(titleNames[lectureTitle[i][j]]);
		}
		out.println("</td>");
	}
	out.println("</tr>");
}
%>
</table>
</div>
<hr>
<div align="center" >
<%
for (LectureBean value : manager.getLectureList())
{
%>
	<%= value.toString() %>
<%
	out.println("<br>");
}
%>
</div>
</body>
</html>