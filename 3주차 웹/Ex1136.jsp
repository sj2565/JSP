<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- �Ϸ� �ð� �� �� --%>
	<% int i = 24; %>
	
	<%
		out.println("�Ϸ�� " + i + " �ð��̸�, <p>");
		out.println("�Ϸ�� " + i*60 + " ���̸�, <p>");
		out.println("�Ϸ�� " + i*60*60 + " �� �Դϴ�. <p>");
	
	%>
</body>
</html>