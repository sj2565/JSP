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
	5. getProperty �׼� �±׿� �ڹٺ��� Person�� �̿��Ͽ� ���̵�� �̸��� ������ ��� ���α׷�		
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" scope ="request" />
 	<p> ���̵� : <jsp:getProperty name="person" property="id" />
 	<p> �� �� : <jsp:getProperty name="person" property="name" />
 
 
</body>
</html>