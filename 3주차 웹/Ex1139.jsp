<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--  ǥ���� �±��� ��ɰ� ����
	
		���� : <%= �ڹ� �ڵ� %>
		
		Ư¡ : ����, ����, ��(boole) ���� �⺻ ������ Ÿ�� + �ڹ� ��ü Ÿ�� ��� ����
			  ǥ���� �±׿� �ۼ��� ��� �ڹ� �ڵ��� ���� ���ڿ��� ��ȯ�Ǿ� �� �������� ���
			  
			  -�⺻ ������ Ÿ���� toString()�� ���� ���
			  -�ڹ� ��ü Ÿ���� java.lang.Object Ŭ������ toString() �޼ҵ带 ����Ͽ� ���
			  -��ü���� ������ toString()�� ����Ͽ� ���
	--%>
	
	<%-- ǥ���� �±׷� ���� ��¥ ����ϱ� --%>
	
	<p> Today's date : <%= new java.util.Date() %> </p>
	
		
	
</body>
</html>