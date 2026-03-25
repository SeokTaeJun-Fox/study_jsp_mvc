<%@page import="java.util.Optional"%>
<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정</title>
</head>
<body>

<%
	Optional<PostVO> op = (Optional<PostVO>)request.getAttribute("postVO");
	PostVO target = op.get();
%>

<form action="/mvc/update-ok.post" method="post">
	<input name="id" type="hidden" value="<%=target.getId() %>" />
	<div>
		<span>글 제목</span>
		<input name="postTitle" value="<%=target.getPostTitle() %>"/>
	</div>
	<div>
		<span>글 내용</span>
		<textarea name="postContent"><%=target.getPostContent() %></textarea>
	</div>
	<button>게시판 수정</button>
</form>


</body>
</html>