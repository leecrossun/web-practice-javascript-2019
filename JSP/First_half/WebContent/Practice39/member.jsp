<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
 <style>
	table {
		border: 1px solid #919191;
		border-collapse:collapse;
	}
	#title {
		text-align:center;
		font-weight:bold;
		background-color:#ECECEC;
	}
    input.imageAlign { vertical-align:middle; }
    textarea {
        width: 450px;
        height: 70px;
    }
</style>
</head>
<body>
<center>
    <img src="image/eclass_title.jpg">
    <form  name="form1" method="post" action="Practice39.jsp">
	<div align="center">
		<table border="1">
			<tr>
				<th colspan="2" id="title">회원가입</th>
			</tr>
			<tr>
				<td id="title">아이디</td>
				<td>
					<input type="text" name="id" size="10">
					<input type=image src="image/check.gif" class="imageAlign">
				</td>
			</tr>
			<tr>
				<td id="title">패스워드</td>
				<td>
					<input type="text" name="pw" size="9px">
				</td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td>
					<input type="radio" name="gender" value="1">남
					<input type="radio" name="gender" value="2" checked>여
				</td>
			</tr>
			<tr>
				<td id="title">국적</td>
				<td>
					<input type="text" size="18px" value="대한민국">
					<input type="button" value="국적변경" disabled>
				</td>
			</tr>
				<tr>
				<td id="title">휴대폰</td>
				<td>
					<select>
						<option value="1">010</option>
						<option value="2">011</option>
						<option value="3">017</option>
					</select>
					<input type="text" size="5px">-
					<input type="text" size="5px">
				</td>
			</tr>
			<tr>
				<td id="title">이메일</td>
				<td>
					<input type="text" name="email" size="40px">
				</td>
			</tr>
			<tr>
				<td id="title">생일</td>
				<td>
					<input type="date" name="birth">
				</td>
			</tr>
			<tr>
				<td id="title">관심분야</td>
				<td>
					<input type="checkbox" name="hobby" value="0">뉴스
					<input type="checkbox" name="hobby" value="1" checked>맛집
					<input type="checkbox" name="hobby" value="2">책
					<input type="checkbox" name="hobby" value="3">영화
					<input type="checkbox" name="hobby" value="4">여행
				</td>
			</tr>
			<tr>
				<td id="title">가입인사</td>
				<td>
					<textarea>회원들에게 간단한 가입인사를 남겨주세요</textarea>
				</td>
			</tr>
			<tr>
				<td id="title">증명사진</td>
				<td>
					<input type="file">
				</td>
			</tr>
			<tr>
				<td colspan="2" id="title">
					<input type="submit" value="가입하기">
					<input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
		</div>
	</form>
</body>
</html>