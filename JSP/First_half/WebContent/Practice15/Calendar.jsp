<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
	p {
	 font-size: 20px;
	 font-weight: bolder;
	}
	
</style>
</head>
<body>
<%@ page import="java.util.Calendar" %>
<%
	int year = 1919;
	int month = 3;
	
	out.println("<p>" + year + "년 " + month + "월 </p><hr>");
	Calendar cal = Calendar.getInstance();
	cal.set(year, month - 1, 1);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	int count = 0;
	for (int i = 0; i < day - 1; i++)
	{
		out.println("&nbsp&nbsp&nbsp");
		count++;
	}
	for (int i = 1; i <= end - 1; i++)
	{
		out.println(i + "&nbsp");
		count++;
		if (count % 7 == 0)
			out.println("<br>");
	}
	
	
	
%>
</body>
</html>