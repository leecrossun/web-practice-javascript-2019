<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="color" %>
<% request.setCharacterEncoding("UTF-8"); %>
<font color="${color}"><%= session.getAttribute("ID") %>님 환영합니다!!</font><br>
