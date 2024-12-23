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
		param 액션 태그의 기능과 사용법
		1. 정의 : 현재 JSP 페이지에서 다른 페이지에 정보를 전달하는 태그	
		2. 특징 : - 단독으로 사용하지 못한다.
				 - <jsp:forward>, <jsp:include> 태그의 내부에서 사용
		3. 형식 :
			<jsp:forward page="파일명" >
				<jsp:param name="매개변수명1" value="매개변수값1" />
				<jsp:param name="매개변수명2" value="매개변수값2" />
			</jsp:forward>		 
			
			또는
			
			<jsp:include page="파일명" >
				<jsp:param name="매개변수명1" value="매개변수값1" />
				<jsp:param name="매개변수명2" value="매개변수값2" />
			</jsp:include>		
	 --%>
	 
	 <h3> 이 파일은 Ex512.jsp 입니다. </h3>
	 <jsp:include page="Ex513.jsp">
	 	<jsp:param name="date" value="<%=(new java.util.Date()).toLocaleString()%>" />
	 </jsp:include>
	 
	 <p> 웹 서버 프로그래밍 </p>
	 
	 
</body>
</html>