<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		스크립틀릿 태그 형식 : <% 자바 코드; %>
		
		* 선언문 태그와 스크립트 태그 비교
		===================================================
		* 선언문 태그
		1. 변수(전역변수)뿐만 아니라 메소드를 선언할 수 있다.
		2. 서블릿 프로그램으로 변환될 때 _jspService() 메소드 외부에 배치된다.
		---------------------------------------------------
		* 스크립틀릿 태그
		1. 메소드 없이 변수(지역변수)만을 선언할 수 있다.
		2. 서블릿 프로그램으로 변환될 때 _jspService() 메소드 내부에 배치된다.
		===================================================
	
	  --%>
	<%-- 스크립틀릿 태그에 지역변수 사용하기 --%>
	
	<%
		int a = 2;
		int b = 3;
		int sum = a+b;
		out.println("2 + 3 = " + sum);
	%>
	
	
	
	
	
	
	
	
	
</body>
</html>