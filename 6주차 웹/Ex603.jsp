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
	1. useBean 액션태그에 Date 클래스를 사용하여 현재 날짜와 시각 출력 프로그램 
 --%>
 		
 	<jsp:useBean id="date" class="java.util.Date" />	
 
 	<p>
 	<%
 		out.print("오늘의 날짜 및 시각");
 	%>
 	<p> <%= date  %>
 
</body>
</html>