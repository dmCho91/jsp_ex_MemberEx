<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="500" border="1">
		<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${content_view.bId }">
			<tr>
				<td>��ȣ</td>
				<td>${content_view.bId }</td>
			</tr>
			<tr>
				<td>��ȸ��</td>
				<td>${content_view.bHit }</td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><input type="text" name="bName" value="${content_view.bName }" size="50"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="bTitle" value="${content_view.bTitle }" size="50"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea name="bContent" rows="10">${content_view.bContent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="����">&nbsp;&nbsp;
				<a href="list.do">��Ϻ���</a>&nbsp;&nbsp;&nbsp;
				<a href="delete.do?bId=${content_view.bId }">����</a>&nbsp;
				<a href="reply_view.do?bId=${content_view.bId }">�亯�ۼ�</a>
				</td>
			</tr>
		</form>	
	</table>
</body>
</html>