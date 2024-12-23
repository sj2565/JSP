<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage ="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> 오류가 발생.
	<p> 예외 : <%= exception %>
	<p> toString() : <%= exception.toString() %>
	<p> getClass().getName() : <%= exception.getClass().getName() %>
	<p> getMessage() : <%= exception.getMessage() %>
</body>
</html>