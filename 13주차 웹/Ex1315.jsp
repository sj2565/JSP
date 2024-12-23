<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%--
	1. 쿠키 생성
	- Cookei() 메소드를 사용
	- 쿠키를 생성한 후에는 반드시 response 내장 객체의  addCookie() 메소드를 쿠키를 설정
		Cookie Cookie(String name, String value);
		: 첫번째 매개변수는 name은 쿠키를 식별하기 위한 이름
		: 두번째 매개변수는 vlaue는 쿠키 값
	
		ex)	Cookie cookie = new Cookie("memberId", "admin");
			response.addCookie(cookie); 
 --%>
	<form method="post" action="Ex1316.jsp">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name ="passwd">
		<p> <input type="submit" value="전송"> <input type="reset" value="다시쓰기">
	</form>
</body>
</html>