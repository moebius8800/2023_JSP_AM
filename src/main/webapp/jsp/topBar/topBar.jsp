<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
	int loginedMemberId = (int) request.getAttribute("loginedMemberId");
	String loginedMemberLoginId = (String) request.getAttribute("loginedMemberLoginId");
	%>
	
	<%
	if (loginedMemberId == -1) {
	%>
		<div><a href="../member/login">로그인</a></div>
		<div><a href="../member/join">회원가입</a></div>
	<%
	}
	%>
	<%
	if (loginedMemberId != -1) {
	%>
		<div>
			<span><%= loginedMemberLoginId %>님 환영합니다~</span>
			<a href="../member/doLogout">로그아웃</a>
		</div>
	<%
	}
	%>