<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	1단계: 폼 구성
 --%>
 	<form action = "Ex1207.jsp" method="post">
 		<p> 숫자 1 : <input type="text" name="num1">
 		<p> 숫자 2 : <input type="text" name="num2"> 
 		<p> <input type="submit" value="나누기"><input type="reset" value="다시쓰기">
 	</form>
</body>
</html>