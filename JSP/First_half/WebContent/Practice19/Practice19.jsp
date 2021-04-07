<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
	table td {
	text-align:center;
	width:80px; height:30px;
	font-weight:900;
	} 
	table {
	border-collapse:collapse;
	}
</style>
</head>
<body>
<%@ page import="java.util.Calendar" %>
<%
Calendar today = Calendar.getInstance();
int year = today.get(Calendar.YEAR);
int month = today.get(Calendar.MONTH);
int day = today.get(Calendar.DATE);

Calendar cal = Calendar.getInstance();
cal.set(year, month, 1);
int day2 = cal.get(Calendar.DAY_OF_WEEK);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
int count = 1;
int date = 1;

out.println("<div align=right>"+year + "-" + (month + 1) + "-" + day+"</div>");
out.println("<div align=center>");
out.println("<table border=1px> ");
out.println("<tr>");
out.println("<td ><font color=red >일</font></td>");

String s[] = {"월","화","수","목","금"};
for (int i = 0; i < 5; i++)
	out.println("<th>" + s[i] + "</th>");

out.println("<td><font color=blue >토</font></td>");
out.println("</tr>");

out.println("<tr>");
for (int j = 0; j < (day2-1); j++)
{
	out.println("<td>&nbsp&nbsp&nbsp</td>");
	count++;
}

	while (date <= end)
	{
		out.println("<td>" + date + "</td>");
		count++;
		date++;
		
		if (count % 7 == 0)
		{
			out.println("<td> <font color=blue >"+date+"</font></td></tr><tr>");
			count++;
			date++;
		}
		if (count % 7 == 1)
		{
			out.println("<td> <font color=red >"+date+"</font></td>");
			count++;
			date++;
		}
	}
	while (count % 7 != 1)
	{
		out.println("<td>&nbsp&nbsp&nbsp</td>");
		count++;
	}
	out.println("</tr>");

out.println("</table>");
out.println("</div>");
%>	
</body>
</html>