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
	4. �ڹٺ��� Person�� �����ϰ� userBean �׼� �±׿� Person  Ŭ������ ����Ͽ� ���̵�� �̸� �����ϴ� ���α׷�	
 --%>
 
 	<jsp:useBean id="person" class="Test.Person" scope="request" />
 	
 	<p> ���̵� : <%= person.getId() %>
 	<p> �� �� : <%= person.getName() %>
 	
 	<%
 		person.setId(20211111);
 		person.setName("������");
 	%>
 	
 	<jsp:include page="Ex605.jsp" />
 	
 
 
</body>
</html>