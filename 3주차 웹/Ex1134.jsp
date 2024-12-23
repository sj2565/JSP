<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 선언문 태그에 문자열 전역 메소드 사용하기 --%>
	
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