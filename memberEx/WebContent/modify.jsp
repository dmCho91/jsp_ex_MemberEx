<%@ page import="com.javalec.ex.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = (String) session.getAttribute("id");
	MemberDAO dao = MemberDAO.getInstance();
	MemberDTO dto = dao.getMember(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="member.js" charset="UTF-8"></script>
</head>
<body>
	<form action="modifyOk.jsp" method="post" name="f_mod">
		���̵� : <%=id %><br>
		������й�ȣ : <input type="password" name="pw" size="10"><br>
		������й�ȣȮ��: <input type="password" name="pw_check" size="10"><br>
		�̸� : <%=dto.getName() %><br>
		�̸��� : <input type="text" name="email" value="<%=dto.getEmail() %>" size="20"><br>
		�ּ� : <input type="text" name="address" value="<%=dto.getAddress() %>" size="50"><br>
		<input type="button" value="��������" onclick="modifyConfirm()">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="���" onclick="javascript:window.location='main.jsp'">
	</form>

</body>
</html>