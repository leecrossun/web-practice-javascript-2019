<!--문헌정보학과 20170581 이효선
         웹브라우저 : 크롬 -->
<%@ tag language="java" pageEncoding="UTF-8"%>
<style>
table td {
	width:100px; height:200px;
	} 
p {
	font-size:50px;
	font-weight:900;
}
</style>
<h2><jsp:doBody/></h2>
<hr>
<table border="1px">
<%
int num = 2;
for (int i = 0; i < 2; i++)
{
	out.println("<tr>");
	for (int j = 0; j < 4; j++)
	{
		out.println("<td>");
		for (int k = 1; k <= 9; k++)
			out.println("&nbsp;&nbsp;" + num + " * " + k + " = " + num*k + "<br>");
		num++;
		out.println("</td>");
	}
	out.println("</tr>");
}
out.println("</table>");
out.println("</div>");
%>