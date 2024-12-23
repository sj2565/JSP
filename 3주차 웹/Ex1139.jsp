<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--  표현문 태그의 기능과 사용법
	
		형식 : <%= 자바 코드 %>
		
		특징 : 숫자, 문자, 불(boole) 등의 기본 데이터 타입 + 자바 객체 타입 사용 가능
			  표현문 태그에 작성된 모든 자바 코드의 값은 문자열로 변환되어 웹 브라우저에 출력
			  
			  -기본 데이터 타입은 toString()을 통해 출력
			  -자바 객체 타입은 java.lang.Object 클래스의 toString() 메소드를 사용하여 출력
			  -자체에서 선언한 toString()을 사용하여 출력
	--%>
	
	<%-- 표현문 태그로 현재 날짜 출력하기 --%>
	
	<p> Today's date : <%= new java.util.Date() %> </p>
	
		
	
</body>
</html>