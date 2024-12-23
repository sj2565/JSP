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
	5. getProperty 액션 태그엥 자바빈즈 Person을 이용하여 아이디와 이름을 가져와 출력 프로그램		
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" scope ="request" />
 	<p> 아이디 : <jsp:getProperty name="person" property="id" />
 	<p> 이 름 : <jsp:getProperty name="person" property="name" />
 
 
</body>
</html>