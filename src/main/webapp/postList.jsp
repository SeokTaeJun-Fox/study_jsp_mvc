<%@page import="com.app.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 전체 조회</title>
</head>
<body>
<%
	List<PostVO> posts = (List<PostVO>)request.getAttribute("posts");
%>
<table border = 1>
<tr>
	<th>게시글 id</th>
	<th>게시글 제목</th>
	<th>게시글 내용</th>
	<th>작성일자</th>
</tr>
<%
	for(PostVO post : posts) {
		%><tr><td><%=post.getId() %></td><%
		%><td><a href="/mvc/read.post?id=<%=post.getId() %>"><%=post.getPostTitle() %></a></td><%
		%><td><%=post.getPostContent() %></td><%
		%><td><%=post.getPostCreateAt() %></td></tr><%
	};
%>
</table>
<a href="/mvc/write.post">게시판 등록</a>
</body>
</html>