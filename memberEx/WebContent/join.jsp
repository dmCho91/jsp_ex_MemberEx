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
		���̵� : <input type="text" name="id" size="10"><br>
		��й�ȣ : <input type="password" name="pw" size="10"><br>
		��й�ȣȮ��: <input type="password" name="pw_check" size="10"><br>
		�̸� : <input type="text" name="name"	size="10"><br>
		�̸��� : <input type="text" name="email" size="20"><br>
		�ּ� : <input type="text" name="address" size="50"><br>
		<input type="button" value="ȸ������" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="���" onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>