<%@page import="com.app.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 페이지</title>
</head>
<body>
<%
	List<ProductVO> products = (List<ProductVO>)request.getAttribute("products");
%>

<!-- 테이블 화면 출력 -->
<table border = 1>
<tr>
	<th>상품 id</th>
	<th>상품 이름</th>
	<th>상품 가격</th>
	<th>상품 재고</th>
</tr>
<%
	for(ProductVO product : products) {
		%><tr><td><%=product.getId() %></td><%
		%><td><a href="/mvc/read.product?id=<%=product.getId() %>"><%=product.getProductName() %></a></td><%
		%><td><%=product.getProductPrice() %></td><%
		%><td><%=product.getProductStock() %></td></tr><%
	};
%>
</table>
</body>
</html>