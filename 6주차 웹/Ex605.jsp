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
	3. 자바빈즈 Person을 생성하고 userBean 액션 태그에 Person  클래스를 사용하여 아이디와 이름 출력 프로그램
	
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" scope="request" />
 	
 	<p> 아이디 : <%= person.getId()  %>
 	<p> 이  름 : <%= person.getName() %>
 
</body>
</html>