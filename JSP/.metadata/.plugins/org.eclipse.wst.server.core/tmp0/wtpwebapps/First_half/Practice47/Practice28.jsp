<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의 시간표</title>
<style>
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
<%!
int[][] lectureType = {
		{0,1,1,0,1},
		{1,0,0,0,2},
		{0,0,2,0,4},
		{2,3,0,3,0},
		{0,0,0,2,0},
		{0,0,0,0,0}
};
int[][] consecutive = {
		{1,2,1,1,1},
		{2,0,1,1,1},
		{0,1,1,1,4},
		{2,1,1,1,0},
		{0,1,1,2,0},
		{1,1,1,0,0},
		
};
int[][] lectureTitle = {
		{-1,4,5,-1,5},
		{3,-1,-1,-1,1},
		{-1,-1,1,-1,7},
		{0,6,-1,6,-1},
		{-1,-1,-1,2,-1},
		{-1,-1,-1,-1,-1},
		
};
String[] titleNames={
		"웹프로그래밍","운영체제","소프트웨어프로그래밍","데이터베이스개론","자료구조","네트워크","창의와감성","사회봉사"
};
String[] days = {"월","화","수","목","금","토"};
%>
<div align=center><h3>강의 시간표</h3>
<table>
<%
int i;
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
</body>
</html>