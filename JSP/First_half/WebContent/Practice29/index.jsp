<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<body>
<form method="POST" action="checker.jsp">
	<table>
		<tr>
			<td colspan="2" style="text-align:center;"><h2>Alice in Wonderland</h2></td>
		</tr>
		<tr>
			<td>
				<%@ include file="viewer.jsp" %>
			</td>
			<td>
				<%@ include file="login.jsp" %>
			</td>
		</tr>
	</table>
	<input type="hidden" value="login" name="action">
</form>
</body>
</html>