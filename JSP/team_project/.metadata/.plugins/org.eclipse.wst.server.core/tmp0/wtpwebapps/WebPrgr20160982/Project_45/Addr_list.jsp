<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr45.*"%>
<!DOCTYPE html>
<jsp:useBean id="am" class="jspbook.pr45.AddrManager" scope="application"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>주소록(전체보기)</h2>
<hr>
<a href="addr_form.jsp">주소추가</a>
<%
	int rpp = 2;
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
		for(startIndex = ((currentPage - 1)*2); startIndex < (((currentPage - 1)*2)+ rpp); startIndex++){
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
		out.println("<a href=\"Addr_list.jsp?sindex="+ li + "\">" 
				+ li + "</a>");
	}
%>
<hr>
<a href="Addr_list.jsp">전체 목록 보기</a>
<a href="addr_list_group.jsp">그룹별 목록 보기</a>


</div>
</body>
</html>