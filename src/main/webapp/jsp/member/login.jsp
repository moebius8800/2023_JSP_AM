<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	
	<script>
		function loginFormSubmit(form) {
			
			form.loginId.value = form.loginId.value.trim();
			form.loginPw.value = form.loginPw.value.trim();
			
			if(form.loginId.value.length == 0){
				alert('아이디를 입력해주세요');
				form.loginId.focus();
				return;
			}
			
			if(form.loginPw.value.length == 0){
				alert('비밀번호를 입력해주세요');
				form.loginPw.focus();
				return;
			}
			
			form.submit();
		}
	</script>
	
	<form action="doLogin" method="POST" onsubmit="loginFormSubmit(this); return false;">
		<div>
			로그인 아이디 : <input type="text" name="loginId" placeholder="아이디를 입력해주세요" />
		</div>
		<div>
			로그인 비밀번호 : <input type="password" name="loginPw" placeholder="비밀번호를 입력해주세요" />
		</div>
		
		<div>
			<button>로그인</button>
			<a href="../home/main">취소</a>
		</div>
	</form>
	
</body>
</html>