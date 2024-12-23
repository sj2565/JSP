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
	세션에 저장된 모든 세션 속성 삭제하기
 --%>
  	<h4>  ---  세션을 삭제 전  ---  </h4>
  	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 값 userPW : " + user_pw + "<br>");
		
		if(request.isRequestedSessionIdValid() == true){
			out.println("세션이 유효합니다.");
		}else{
			out.println("세션이 유효하지 않습니다.");
		}
		session.invalidate();
  	%>
  	<h4>  ---  세션을 삭제 후  ---  </h4>
 	<%
		if(request.isRequestedSessionIdValid() == true){
			out.println("세션이 유효합니다.");
		}else{
			out.println("세션이 유효하지 않습니다.");
		}
 	%>
</body>
</html>