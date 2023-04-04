<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
  int inputDan = request.getParameter("dan");
    
    int dan = Integer.parseInt(inputDan);
    %>
<!DOCTYPE html>
<html>
<head><link rel='icon'type='images/png'href='/images/파일이름.png'> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div>== <%= inputDan %>단 출력 ==</div>
<div></div>
</body>
</html>