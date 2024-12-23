<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 하루 시간 분 초 --%>
	<% int i = 24; %>
	
	<%
		out.println("하루는 " + i + " 시간이며, <p>");
		out.println("하루는 " + i*60 + " 분이며, <p>");
		out.println("하루는 " + i*60*60 + " 초 입니다. <p>");
	
	%>
</body>
</html>