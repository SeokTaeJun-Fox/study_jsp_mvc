<%@page import="java.util.Optional"%>
<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 확인</title>
</head>
<body>
<%
	Optional<PostVO> op = (Optional<PostVO>)request.getAttribute("postVO");
	PostVO target = op.get();
%>
<p><span>게시글 날짜 : <%=target.getPostCreateAt() %></span></p>
<p><span>게시글 제목 : <%=target.getPostTitle() %></span></p>
<h1> 게시글 내용</h1>
<p><span><%=target.getPostContent() %></span></p>
<p>
<a href="/mvc/update.post?id=<%=target.getId() %>">게시글 수정</a>
<a href="/mvc/delete-ok.post?id=<%=target.getId() %>">게시글 삭제</a>
<a href="/mvc/list.post">게시글 리스트로</a>
</p>
</body>
</html>