<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty sessionScope.validMember }">
	<jsp:forward page="login.jsp"/>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>${sessionScope.name }�� �ȳ��ϼ���.</h1>
	<form action="logout.jsp" method="post">
		<input type="submit" value="�α׾ƿ�">&nbsp;&nbsp;
		<input type="button" value="��������" onclick="javascript:window.location='modify.jsp'">
	</form>
</body>
</html>