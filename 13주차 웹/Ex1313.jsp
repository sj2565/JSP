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
	세션 아이디와 웹 사이트에서 유지한 시간 출력하기
 --%>
 	<%
 		String session_id = session.getId();

 		long last_time = session.getLastAccessedTime();
 		long start_time = session.getCreationTime();
 		long used_time = (last_time - start_time) / 60000; // 분
 		
 		out.println("세션 아이디 : " + session_id + "<br>");
 		out.println("요청 시작 시간 : " + start_time + "<br>");
 		out.println("요청 마지막 시간 : " + last_time + "<br>");
 		out.println("웹 사이트의 경과 시간 : " + used_time + "<br>");
 	%>
</body>
</html>