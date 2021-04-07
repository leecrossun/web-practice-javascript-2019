<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
     <!--문헌정보학과 20170581 이효선
    웹브라우저 최적화 : 크롬 브라우저-->
<meta charset="UTF-8">
<title>오류 메시지</title>
    <style>
        *{
            font-weight: bolder;
        }
         table {
             align-content: center;
             text-align: center;
             width:600px;
        }
        #orange{
            background-color: #ffdab9;
        }
        #yellow{
            background-color: #ffefd5;
        }
    </style>
</head>
<body>
<%
out.println("<center>");
out.println(" <img src=\"image/eclass_title.jpg\">");      
out.println("<table cellpadding=\"10px\">");        
out.println("<tr>");
out.println("<td id=\"orange\">오류가 발생했습니다</td>");
out.println("</tr>");
out.println("<tr>");
out.println("<td id=\"yellow\">");
out.println("<br><br><br><br>");
out.println("<img src=\"image/flower.gif\">");

out.println("<br>오류 발생시간 : ");
%>
<%= new java.util.Date() %>
<%
out.println("<br><br>최대한 빨리 조치하겠습니다.<br><br><br>");
out.println("</td>");
out.println("</tr>");
out.println("</table>");   
out.println("</center>");
%>
</body>
</html>