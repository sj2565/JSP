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
  2. 5�� 3���� ���ϴ� ���α׷�
 --%>
	<jsp:useBean id="bean" class="Test.Calculator" />
	
	<%
		int m = bean.process(5);
	
		out.print("5�� 3���� : " + m);
	
	%>
	
</body>
</html>