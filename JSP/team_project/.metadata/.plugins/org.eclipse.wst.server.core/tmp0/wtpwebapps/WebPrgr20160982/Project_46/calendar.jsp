<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<style>
#tb1 {
   width : 700px;
}
.center {
   text-align : center;
}
.right{
   text-align : right;
}
#tb2 {
   width : 700px;
   height : 200px;
   text-align : center;
   border-collapse : collapse;
}
#days {
   height : 20px;
}
</style>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<!-- 20170472 백진경 -->
   <%
   
   //돌아가는데 가독성 부분만 봐주세요
  
   
     out.println("<div align = \"left\">");
  
      //먼저 Calendar 객체를 두 개 만들었어요. cal은 달력용, cal2은 우측 상단 출력용
      Calendar cal = Calendar.getInstance();
      Calendar cal2 = Calendar.getInstance();
      
    //parameter를 통해 year, month값을 받았어요
      String sYear = request.getParameter("year");
      String sMonth = request.getParameter("month");
      int year, month;
      
    //그리고 그 값을 String에서 Integer로 바꿔주고, 만약 값이 없으면 오늘 달력으로
      if (sYear == null || sMonth == null) {
         year = cal.get(Calendar.YEAR);
         month = cal.get(Calendar.MONTH) + 1;
      } else {
         year = Integer.parseInt(sYear);
         month = Integer.parseInt(sMonth);
      }
      
    // 만약 월의 범위가 넘어가면 작동 안 되게 바꿨어요
      if(month >= 12) {
         month = 12;
      }
      if(month <= 1){
         month = 1;
      }

    //출력용에 값을 넣어줬어요
      int year_static = cal2.get(Calendar.YEAR);;
      int month_static = cal2.get(Calendar.MONTH) + 1;
      int date_static = cal2.get(Calendar.DAY_OF_MONTH);
   
    //달력용에도 값을 넣고, 요일이랑 마지막날짜랑 줄을 바꾸기 위한 변수를 선언했어요 
      cal.set(year, month - 1, 1);
      int day = cal.get(Calendar.DAY_OF_WEEK);
      int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
      int space = 0;
      
     // 테이블을 만들어 첫 줄을 작성했어요
      out.println("<table id = \"tb1\">" );
      out.println("<tr>" );
      out.println("<td>" + "<b>" +"<a href=\"calendar.jsp?year="+(year-1));
      out.println("&month=" + month + "\">" + "◀" + "</a>" );
      out.println(year + "년");
      out.println("<a href=\"calendar.jsp?year="+(year+1));  
      out.println("&month=" + month + "\">" + "▶ " +"</a>" + "</td>" );
      
      out.println("<td class = \"center\">" + "<b>" + "<a href=\"calendar.jsp?year="+year);
      out.println("&month=" + (month-1) + "\">" + "◀" + "</a>" );
      out.println(month + "월");
      out.println("<a href=\"calendar.jsp?year="+year);  
      out.println("&month=" + (month+1) + "\">" + "▶ " +"</a>" + "</td>" );
         
      out.println("<td class = \"right\">");
      out.println("<b>" + year_static + "-" + month_static + "-" + date_static + "</b>"+ " </td>");
      out.println("</tr>" + "</table>" );

     //달력의 요일부를 출력했어요
      out.println("<table id = \"tb2\" border = \"1\">");
      out.println("<tr>");
      out.println("<td id = \"days\">" + "<font color = \"red\">" + "일" + "</font>" + "</td>");
      out.println("<td id = \"days\">" + "월" + "</td>");
      out.println("<td id = \"days\">" + "화" + "</td>");
      out.println("<td id = \"days\">" + "수" + "</td>");
      out.println("<td id = \"days\">" + "목" + "</td>");
      out.println("<td id = \"days\">" + "금" + "</td>");
      out.println("<td id = \"days\">" + "토" + "</td>" + "</tr>" + "<tr>");
      
      //달력의 날짜를 출력했어요
      for (int i = 1; i <= end; i++) {
         while (space < day - 1) {
            out.println("<td>" + "&nbsp" + "</td>");
            space++;
         }
         
         if (space % 7 == 0) { //만약 일요일이면 붉게 출력하기
            out.println("<td>" + "<font color = \"red\">" + i + "</td>");
            space++;
         } else {
             out.println("<td>" + i + "</td>");
             space++;     
         }
         
         
         if (space % 7 == 0){ //만약 7개를 다 출력했으면 줄 바꾸기
            out.println("</tr>" + "<tr>");
         }
 
         if (i == end) { //마지막줄에서 마지막날이 지나도 7칸을 모두 출력하기
            while (space % 7 !=0 ) {
                 out.println("<td>" + "&nbsp" + "</td>");
                 space++;
              }
         }
         
      }
      out.println("</tr>");
      out.println("</table>");
      out.println("</div>");
      
 %>
</body>
</html>