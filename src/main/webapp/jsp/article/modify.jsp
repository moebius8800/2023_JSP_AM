<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	Map<String, Object> articleRow = (Map) request.getAttribute("articleRow");
%>

<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
	<h1><%= (int) articleRow.get("id") %>번 게시물 수정</h1>
	
	
	<form action="doModify" method="POST">
		<input type="hidden" name="id" value="<%= (int) articleRow.get("id") %>"/>
		<div>번호 : <%= (int) articleRow.get("id") %></div>
		<div>날짜 : <%= (LocalDateTime) articleRow.get("regDate") %></div>
		<div>제목 : <input type="text" name="title" value="<%= (String) articleRow.get("title") %>" /></div>
		<div>내용 : <textarea name="body"><%= (String) articleRow.get("body") %></textarea></div>
		<div>
			<button>수정</button>
			<a href="list">목록</a>
			<a href="detail?id=<%= (int) articleRow.get("id") %>">취소</a>
		</div>
	</form>
</body>
</html>