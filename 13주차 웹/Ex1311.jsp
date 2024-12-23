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
	4-4 세션 유효 시간 설정
		1. 세션 유효 시간
		- 세션을 유지하기 위한 세션의 일정 시간
		- 웹 브라우저에 마지막 접근한 시간부터 일정 시간 이내에 다시 웹 브라우저에 접근하지 않으면 자돌으로 세션이 종료
		- 세션 유효 시간을 설정하기 위해서 session 내장 객체의 setMaxInactiveInterval() 메소드를 사용
		- 형식 :	void setMaxInactiveInterval(int interval);
			ex) session.setMaxInactiveInterval(60*60);
 --%>
</body>
</html>