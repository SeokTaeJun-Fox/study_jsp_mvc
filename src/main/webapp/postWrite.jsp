<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
MVC 패턴 실습 </br>
POST의 CRUD </br>
1. 게시판 등록 </br>
2. 게시판 전체 조회 </br>
3. 게시판 1개 조회 </br>
4. 게시판 수정 </br>
5. 게시판 삭제 </br>

- 오류가 만나는 것들은 모두 해결 </br>
	<form action="/mvc/write-ok.post" method="post">
		<div>
			<span>글 제목</span>
			<input name="postTitle" />
		</div>
		<div>
			<span>글 내용</span>
			<textarea name="postContent"></textarea>
		</div>
		<button>작성</button>
	</form>


</body>
</html>