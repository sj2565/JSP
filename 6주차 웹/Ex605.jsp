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
	3. �ڹٺ��� Person�� �����ϰ� userBean �׼� �±׿� Person  Ŭ������ ����Ͽ� ���̵�� �̸� ��� ���α׷�
	
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" scope="request" />
 	
 	<p> ���̵� : <%= person.getId()  %>
 	<p> ��  �� : <%= person.getName() %>
 
</body>
</html>