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
	쿠키 생성 처리	
 --%>
 		<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			
			//session.setAttribute("userID", user_id);
			//session.setAttribute("userPW", user_pw);
			
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);

			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			out.println("쿠키 생성이 성공했습니다.");
			out.println(user_id + "님 환영합니다.");
		}else if(user_id.equals("test") && user_pw.equals("1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			out.println("쿠키 생성이 성공했습니다.");
			out.println(user_id + "님 환영합니다.");
		}else{
			out.println("쿠키 설정이 실패했습니다.");
		}
	%>
</body>
</html>