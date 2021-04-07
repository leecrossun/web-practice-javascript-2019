<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr45.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.pr45.AddrManager" scope="application"/>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 목록</title>
<style>
	td {
		text-align: center;
	}
</style>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a>
<br>
<br>

<%
	int rpp = 3;
	int currentPage;
	String sindex = request.getParameter("sindex");

	if(sindex == null){
		currentPage = 1;
	}
	else{
		currentPage = Integer.parseInt(sindex);
	}
	
	int startIndex = 1;
	int lastIndex = am.getAddrList().size();
	
	int allPage;

	if(lastIndex % rpp == 0){
		allPage = lastIndex / rpp;
	}
	else{
		allPage = lastIndex / rpp + 1;
	}

%>

<table border="1" width="500">
	<tr>
		<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td>
	</tr>
	<%
		for(startIndex = ((currentPage - 1)*rpp); startIndex < (((currentPage - 1)*rpp)+ rpp); startIndex++){
			if(startIndex < lastIndex) {
	%>
	<tr>
		<td><%=am.getAddrList().get(startIndex).getUsername()%></td>
		<td><%=am.getAddrList().get(startIndex).getTel() %></td>
		<td><%=am.getAddrList().get(startIndex).getEmail() %></td>
		<td><%=am.getAddrList().get(startIndex).getSex() %></td>
		<td><%=am.getAddrList().get(startIndex).getGroup() %></td>
	<%
			}
		}
		
	%>
	
	</tr>
</table>

<%
	for(int li = 1; li <= allPage; li++){
		if(currentPage == li){
			out.println(li);
		}
		else{
			out.println("<a href=\"Addr_list.jsp?sindex="+ li + "\">" 
					+ li + "</a>");
		}
		if(li != allPage && allPage != 1)
			out.println("|");
	}
%>


</div>
</body>
</html>