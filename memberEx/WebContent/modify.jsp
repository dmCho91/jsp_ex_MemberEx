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
		아이디 : <%=id %><br>
		기존비밀번호 : <input type="password" name="pw" size="10"><br>
		기존비밀번호확인: <input type="password" name="pw_check" size="10"><br>
		이름 : <%=dto.getName() %><br>
		이메일 : <input type="text" name="email" value="<%=dto.getEmail() %>" size="20"><br>
		주소 : <input type="text" name="address" value="<%=dto.getAddress() %>" size="50"><br>
		<input type="button" value="정보수정" onclick="modifyConfirm()">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소" onclick="javascript:window.location='main.jsp'">
	</form>

</body>
</html>