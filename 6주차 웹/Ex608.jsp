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
	6. getProperty �׼� �±׿� �ڹٺ��� Person�� �̿��Ͽ� ���̵�� �̸��� �����Ͼ� ��� ���α׷�		
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" />
 	<jsp:setProperty name="person" property="id" value = "20217777"  />
 	<jsp:setProperty name="person" property="name" value = "������"  />
 	
 	<p> ���̵� : <jsp:getProperty property="id" name ="person" />
 	<p> ��  �� : <jsp:getProperty name="person" property="name" /> 
 	<br><br>
 	
 
 
 
</body>
</html>