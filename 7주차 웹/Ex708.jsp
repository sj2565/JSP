<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	HTTP 헤더 정보 값 출력
 --%>
 
 	<%
 		String hostValue = request.getHeader("host");
 		String alValue = request.getHeader("accept-language"); 	
 	 	
 		out.print("호스트명 : " + hostValue + "<br>");
 		out.print("설정된 언어 : " + alValue + "<br>");
 		
 	%>	
 
</body>
</html>