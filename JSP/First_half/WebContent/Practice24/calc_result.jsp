<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <!--문헌정보학과 20170581 이효선
    웹브라우저 최적화 : 크롬 브라우저-->
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<script>

	</script>
	<style>
		#blue {
			background-color:rgb(56,200,254);
			font-weight: bolder;
            font-size: 60px;
            text-align: center;
            font-style: italic;
		}
        * {
            text-align: center;
            font-weight: 100;
        }
	</style>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String op = request.getParameter("op");
	int result = 0;
	
	if (op.equals("+"))
		result = num1 + num2;
	else if (op.equals("-"))
		result = num1 + num2;
	else if (op.equals("-"))
		result = num1 + num2;
	else if (op.equals("*"))
		result = num1 * num2;
	else if (op.equals("/"))
		result = num1 / num2;

%>

<script>
 var result = calc(num1, num2, op);
</script>
<form>
		<table style="margin-left: auto; margin-right: auto;" width="600" height="100">
			<tr>
				<td colspan="2" id="blue" height="40">CalCuLaTor</td>
			</tr>
			<tr><td rowspan="2"><img src="image/cal.jpg" width="300"></td></tr>
		
			<tr><td width="300">
				<input type="text" size="10" name = "num1" value=<%= num1 %> readonly>
				<br><br>
				<select name="op">
						<option value="+">+</option>
						<option value="-">-</option>
						<option value="*">*</option>
						<option value="/">/</option>
				</select>
				<br><br><input type="text" size="10" name = "num2" value=<%= num2 %> readonly>
				<br><br><input type="submit" value="=" >
				<br><br><input type="text" size="10" value= <%= result %>></td>
			</tr>
			<tr>
				<td colspan="2" id="blue" height="100"><br></td>
			</tr>
			<tr><td><br></td></tr>
		</table>
	</form>
</body>
</html>