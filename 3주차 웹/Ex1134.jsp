<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ���� �±׿� ���ڿ� ���� �޼ҵ� ����ϱ� --%>
	
	<%!
	
		String makeItLower(String data1){
			return data1.toLowerCase();
	}	
	%>
	
	<%!
	
		String makeItUpper(String data2){
			return data2.toUpperCase();
	}
	%>
	
	<%
		out.println(makeItLower("HELLO JSP <p>"));
	%>
	
	<%
		out.println(makeItUpper("good moning <p>"));
	%>
	
	
	
	
</body>
</html>