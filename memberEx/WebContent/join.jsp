<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javaScript" src="member.js" charset="UTF-8"></script>
</head>
<body>
	<form action="joinOk.jsp" method="post" name="f_reg">
		아이디 : <input type="text" name="id" size="10"><br>
		비밀번호 : <input type="password" name="pw" size="10"><br>
		비밀번호확인: <input type="password" name="pw_check" size="10"><br>
		이름 : <input type="text" name="name"	size="10"><br>
		이메일 : <input type="text" name="email" size="20"><br>
		주소 : <input type="text" name="address" size="50"><br>
		<input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>