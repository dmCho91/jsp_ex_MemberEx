<%@ page import="com.javalec.ex.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDAO dao = MemberDAO.getInstance();
	int checkNum = dao.userCheck(id, pw);
	if(checkNum == MemberDAO.MEMBER_LOGIN_IS_NOT){
%>
	<script type="text/javascript">
		alert("아이디가 존재하지 않습니다.");
		history.go(-1);
	</script>	
<%
	}else if(checkNum == MemberDAO.MEMBER_LOGIN_PW_NOT_MATCH){
 %>
 	<script type="text/javascript">
 		alert("비밀번호가 틀립니다.");
 		history.go(-1);
 	</script>		
<%
	}else if(checkNum == MemberDAO.MEMBER_LOGIN_SUCCESS){
		MemberDTO member = dao.getMember(id);
		
		if(member == null){
%>
	<script type="text/javascript">
		alert("존재하지 않는 회원입니다.");
		history.go(-1);
	</script>
<%
		}else{
			String name = member.getName();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("validMember", "yes");
			response.sendRedirect("main.jsp");
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>