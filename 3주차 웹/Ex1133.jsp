<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- ���� �±׿� ���� �޼ҵ� ����ϱ� -->
<body>
	<%!
		int sum(int a, int b){
			return a+b;
	}
	%>
	
	<%
		out.println("2 + 3 = " + sum(2,3));
	%>
	
	<%
		out.println("5 + 4 = " + sum(5,4));
	%>
	
</body>
</html>