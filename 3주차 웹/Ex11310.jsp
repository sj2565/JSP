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
		표현문 태그로 연산 결과 출력하기
 	--%>
 	
 	<%
 		int a = 10;
 		int b = 20;
 		int c = 30; 	
 	%>
 	
 	a(=10)와 b(20)와 c(30)의 합은 <%= a+b+c %> 입니다.
 	
 	
</body>
</html>