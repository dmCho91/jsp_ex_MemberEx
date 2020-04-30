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
				<td>번호</td>
				<td>${content_view.bId }</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${content_view.bHit }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="bName" value="${content_view.bName }" size="50"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle" value="${content_view.bTitle }" size="50"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="bContent" rows="10">${content_view.bContent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;
				<a href="list.do">목록보기</a>&nbsp;&nbsp;&nbsp;
				<a href="delete.do?bId=${content_view.bId }">삭제</a>&nbsp;
				<a href="reply_view.do?bId=${content_view.bId }">답변작성</a>
				</td>
			</tr>
		</form>	
	</table>
</body>
</html>