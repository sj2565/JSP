<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%--
	세션에 저장된 세션 속성 삭제하기 1
 --%>
 	<h4>  ---  세션을 삭제하기 전  ---  </h4>
 	<%
 		String user_id = (String) session.getAttribute("userID");
 		String user_pw = (String) session.getAttribute("userPW");
 		
 		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
 		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
 		session.removeAttribute("userID");
 	%>
 	<h4>  ---  세션을 삭제 후  ---  </h4>
 	<%
 	 	user_id = (String) session.getAttribute("userID");
 		user_pw = (String) session.getAttribute("userPW");
 		
 		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
 		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
 	%>	
</body>
</html>