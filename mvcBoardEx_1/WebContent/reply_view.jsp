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
		<form action="reply.do" method="post">
			<input type="hidden" name="bId" value="${reply_view.bId }">
			<input type="hidden" name="bGroup" value="${reply_view.bGroup }">
			<input type="hidden" name="bStep" value="${reply_view.bStep }">
			<input type="hidden" name="bIndent" value="${reply_view.bIndent }">
			
			<tr>
				<td>번호</td>
				<td>${reply_view.bId }</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${reply_view.bHit }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="bName" value="${reply_view.bName }" size="50"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" value="RE_${reply_view.bTitle }" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bContent" rows="10">${reply_view.bContent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="답변등록">&nbsp;&nbsp;
				<a href="list.do">목록보기</a>
				</td>
			</tr>
		</form>	
	</table>
</body>
</html>