<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 배열과 표현 태그를 사용하는 방법  --%>
	<%
		String []str = {"감사합니다.","Thank you."};		
	%>
	
	한국어로 [ <%= str[0] %> ]는 <br>
	영어로 [ <%= str[1] %> ] 입니다.
	
</body>
</html>