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
		function calc(){
			var exp = prompt("계산할 수식을 입력하세요");
            if (exp != null){
                 var result = eval(exp);
			     alert(result);
            }
			
		}
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
<form method="POST" action="calc_result.jsp">
		<table style="margin-left: auto; margin-right: auto;" width="600" height="100">
			<tr>
				<td colspan="2" id="blue" height="40">CalCuLaTor</td>
			</tr>
			<tr><td rowspan="2"><img src="image/cal.jpg" width="300"></td></tr>
		
			<tr><td width="300">
				<input type="text" size="10" name = "op1" value="0">
				<br><br>
				<select name="operator">
						<option value="+">+</option>
						<option value="-">-</option>
						<option value="*">*</option>
						<option value="/">/</option>
				</select>
				<br><br><input type="text" size="10" name = "op2" value="0">
				<br><br><input type="submit" value="=" >
				<br><br><input type="text" size="10" disabled></td>
			</tr>
			<tr>
				<td colspan="2" id="blue" height="100"><br></td>
			</tr>
			<tr><td><br></td></tr>
		</table>
	</form>
</body>
</html>