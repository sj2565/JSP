<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> 오류가 발생.
	<p> 오류 메시지 : <%= exception.getMessage() %>
	<p> toString()을 이용한 오류 메시지 : <%= exception.toString() %>
	<p> 예외 유형 : <%= exception.getClass().getName()  %>
	<p> 오류 발생 근원지 : <%= exception.printStackTrace() %>
</body>
</html>