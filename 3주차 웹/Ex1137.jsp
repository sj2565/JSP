<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 스크립틀릿 태그에 0부터 10까지의 짝수/홀수 출력하기 --%>
	
	<%
		out.println("0부터 10까지의 짝수 출력하기 <p>");
	
		for(int i=0; i<=10; i++){
			if(i % 2 == 0){
				out.println(i + "<br>");
			}
		}
		
		out.println("<p>");
	%>
	
	<%
		out.println("0부터 10까지의 홀수 출력하기 <p>");
		
		for(int j=0; j<=10; j++){
			if(j % 2 == 1){
				out.println(j + "<br>");
			}
		}
	
		out.println("<p>");
	%>
	
</body>
</html>