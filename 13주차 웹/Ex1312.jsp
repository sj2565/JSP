<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%--
	세션 유효 시간을 가져와 출력하기
 --%>
 	  	<h4>  ---  세션 유효 시간 변경 전  ---  </h4>
 	  	<%
 	  		int time = session.getMaxInactiveInterval() / 60;  // 30분
 	  		out.println("세션 유효 시간 " + time + "분<br>");
 	  	%>
 	  	<h4>  ---  세션 유효 시간 변경 후  ---  </h4>
 		<%
 	  		session.setMaxInactiveInterval(60*60);
 			time = session.getMaxInactiveInterval() / 60;  // 60분
 			out.println("세션 유효 시간 " + time + "분<br>");
 	  	%>
</body>
</html>