<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> ������ �߻�.
	<p> ���� �޽��� : <%= exception.getMessage() %>
	<p> toString()�� �̿��� ���� �޽��� : <%= exception.toString() %>
	<p> ���� ���� : <%= exception.getClass().getName()  %>
	<p> ���� �߻� �ٿ��� : <%= exception.printStackTrace() %>
</body>
</html>