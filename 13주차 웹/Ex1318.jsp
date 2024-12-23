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
	쿠키 삭제
	- 쿠키의 유효 기간을 결정하는 setMaxAge() 메소드에 유효 기간을 0으로 설정하여 쿠키를 삭제할 수 있음
	- setMaxAge() 메소드의 형식
		
			void setMaxAge(int age);
			ex)	Cookie cookie = new Cookie("userID", "admin");
				cookie.setMaxAge(0);
				response.addCookie(cookie); 
 --%>
 	<%
 		Cookie[] cookies = request.getCookies(); 	
 	
		for(int i=0; i< cookies.length; i++){
			cookies[0].setMaxAge(0);
			response.addCookie(cookies[i]);
 		}
		// out.prontln("쿠키가 모두 삭제되었습니다.");
		
		Cookie cookie = new Cookie("userPW", "1234");
		
		for(int i=0; i< cookies.length; i++){
			cookie.setMaxAge(0);
			response.addCookie(cookie); 
 		}
		
		response.sendRedirect("Ex1317.jsp");
 	%>
</body>
</html>