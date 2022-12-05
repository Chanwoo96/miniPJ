<%@page import="com.mars.mini.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<%
	BbsVO vo = (BbsVO) request.getAttribute("dto");
String writer = vo.getWriter();
String id = (String) session.getAttribute("id");
%>
<style type="text/css">
#up {
	text-align: right;
}
</style>
</head>
<body>
	<div class="container p-5 my-5 text-center bg-primary text-white">
		<h1>게시글 상세보기</h1>
	</div>
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-4">
				<a href="back.bbs"><button class="btn btn-danger">뒤로가기</button></a>
			</div>
			<div class="col-sm-4"></div>
			<div id="up" class="col-sm-4">
				<%
					if (id.equals(writer)) {
				%>
				<a href="bbsup.bbs?id=${dto.id}"><button class="btn btn-info">수정</button></a>
				<a href="delete.bbs?id=${dto.id}"><button
						class="btn btn-warning">삭제</button></a>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<div class="container mt-5 text-center">
		<table class="table">
			<tr>
				<td>${dto.id}</td>
				<td style="width: 60%">${dto.title}</td>
				<td>${dto.writer}</td>
			</tr>
			<tr>
				<td colspan="3">내용</td>
			</tr>
			<tr>
				<td colspan="3">${dto.content}</td>
			</tr>
		</table>
	</div>

</body>
</body>
</html>