<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<%@ page import="java.util.Calendar" %>
<%
Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
int day = cal.get(Calendar.DAY_OF_WEEK);
String d = "";
switch (day)
{
case 1: d = "일"; break;
case 2: d = "월"; break;
case 3: d = "화"; break;
case 4: d = "수"; break;
case 5: d = "목"; break;
case 6: d = "금"; break;
case 7: d = "토"; break;
}

out.println("오늘은 "+year+"년 "+month+"월 "+date+"일 " + d + "요일입니다.<br><br>");
int start = cal.getMinimum(Calendar.DATE);
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
out.println("이번 달은 "+start+"일부터 시작하여 "+end+"일에 끝납니다.<br><br>");

cal.set(1998, Calendar.NOVEMBER, 15);
year = cal.get(Calendar.YEAR);
month = cal.get(Calendar.MONTH) + 1;
date = cal.get(Calendar.DATE);
day = cal.get(Calendar.DAY_OF_WEEK);
switch (day)
{
case 1: d = "일"; break;
case 2: d = "월"; break;
case 3: d = "화"; break;
case 4: d = "수"; break;
case 5: d = "목"; break;
case 6: d = "금"; break;
case 7: d = "토"; break;
}
out.println("내 생일 "+year+"년 "+ month +"월 "+date+"일은 " + d + "요일입니다.<br><br>");
%>
</body>
</html>