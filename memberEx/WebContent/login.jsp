<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty sessionScope.validMember }">
	<jsp:forward page="main.jsp"/>
</c:if>
 <%--
<%if(session.getAttribute("validMember") != null){%>
<!-- 	<jsp:forward page="main.jsp"/> -->
<%} %> 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="loginOk.jsp" method="post">
		���̵� : <input type="text" name="id"	
			value="<c:if test='${not empty sessionScope.id }'>${sessionScope.id }</c:if>"><br>
		��й�ȣ: <input type="password" name="pw"><br>
		<input type="submit" value="�α���">&nbsp;&nbsp;
		<input type="button" value="ȸ������" onclick="javascript:window.location='join.jsp'">
	</form>
</body>
</html>