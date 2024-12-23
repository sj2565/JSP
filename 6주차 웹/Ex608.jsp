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
	6. getProperty 액션 태그엥 자바빈즈 Person을 이용하여 아이디와 이름을 전달하아 출력 프로그램		
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" />
 	<jsp:setProperty name="person" property="id" value = "20217777"  />
 	<jsp:setProperty name="person" property="name" value = "정나래"  />
 	
 	<p> 아이디 : <jsp:getProperty property="id" name ="person" />
 	<p> 이  름 : <jsp:getProperty name="person" property="name" /> 
 	<br><br>
 	
 
 
 
</body>
</html>