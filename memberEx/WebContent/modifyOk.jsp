<%@ page import="com.javalec.ex.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>

<jsp:useBean id="dto" class="com.javalec.ex.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>

<%
	String id = (String) session.getAttribute("id");
	dto.setId(id);
	
	MemberDAO dao = MemberDAO.getInstance();
	int result = dao.updateMember(dto);
	
	if(result == MemberDAO.MEMBER_UPDATE_SUCCESS){
%>	
	<script type="text/javascript">
		alert("�������� �Ǿ����ϴ�.");
		document.location.href="main.jsp";
	</script>
<%
	}else{
%>
	<script type="text/javascript">
		alert("���������� �����Ͽ����ϴ�.");
		history.go(-1);
	</script>
<%
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