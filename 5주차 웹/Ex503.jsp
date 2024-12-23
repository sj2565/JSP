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
	* forward 액션 태그의 기능과 사용법
	- 정의 : 현재 JSP 페이지에서 다른 페이지로 이동하는 태그
	- 동작원리 : JSP 컨테이너는 현재 JSP 페이지에서 forward 액션 태그를 만나면 그 전까지의 출력 버퍼에 저장되어 있던
				내용을 모두 삭제한다.
				그리고 forward 액션 태그에 설정된 페이지로 프로그램의 제어가 이동한다.
	- 형식 :
		<jsp:forward page="파일명" />
		또는
		<jsp:forward page="파일명"> .... </jsp:forward>			
 --%>
 
 	<h2> forward 액션 태그</h2>
 	<jsp:forward page="Ex504.jsp" />
 	<p> =====================================
 
</body>
</html>