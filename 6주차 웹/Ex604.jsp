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
  2. 5의 3제곱 구하는 프로그램
 --%>
	<jsp:useBean id="bean" class="Test.Calculator" />
	
	<%
		int m = bean.process(5);
	
		out.print("5의 3제곱 : " + m);
	
	%>
	
</body>
</html>