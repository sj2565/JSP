<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //폼에서 한글 입력을 정상적으로 처리하려면 반드시 필요함 
		
		String name = request.getParameter("name");
	%>
	
	<p> 이  름 : <%= name %>
	
</body>
</html>