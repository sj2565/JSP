<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 1���� �� �� ���ϱ�? --%>
	
	<% 
		int year = 365;
	%>
	
	<% 
		out.println("1���� �� �� ���ϱ��? <p>");
	%>
	<%=  
		year / 7
	%>
	
	<%= " �� �Դϴ�. <p>" %>
	
	
	
</body>
</html>