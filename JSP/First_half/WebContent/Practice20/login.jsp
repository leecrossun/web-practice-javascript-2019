<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <!--문헌정보학과 20170581 이효선
    웹브라우저 최적화 : 크롬 브라우저-->
<meta charset="UTF-8">
<title>login</title>
<style>
        table {
            align-content: center;
            font-weight:bolder;
            font-size: 13px;
        }
        img {
            align-content: center;
            position: inherit;
        }
        input[type="text"] {
            background-color: #ffff99;
        }
        div {
            font-weight:bolder;
            font-size: 20px;
            padding: 10px;
        }
    </style>
</head>
<body>
   <center>
    <img src="image/eclass_title.jpg"><br>
    <div>로그인</div>
    <hr>
    <table>
    <tr>
    <td><img src="image/eclass_logo.png"></td>
    <td>
    <form name="frm1" method="POST" action="result.jsp">
        <table cellpadding="7px">
            <tr>
                <td colspan="2">
                    회원님의 아이디와 비밀번호를 정확히 입력하세요.
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <select name="type">
                        <option value="학부생">학부생</option>
                    </select>
                </td>
            </tr>
            <tr></tr>
            <tr>
                <td>아이디</td>
                <td>
                    <input type="text" size="15px" maxlength="12" name="strID">
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td>
                    <input type="text" size="15px" maxlength="12" name="strPwd">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="로그인">
                    <input type="button" value="가입하기" onclick="document.location='member2.html'">
                </td>
            </tr>
        </table>
    </form>
    </td>
    </tr>
    </table>
    </center>
</body>
</html>