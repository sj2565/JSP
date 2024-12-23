<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	1. reponse 객체 - 인터페이스 HttpServletResponse

	==============================================================================================
	메소드									반환값		사용용도
	==============================================================================================
	addCookie(Cookie cookie)				void		쿠키 데이터 기록		
	
	addHeader(String name, String value)	void		response 헤더 내용 기록
	
	sendRedirect(String location)			void		지정된 location 페이지로 이동
	
	setBufferSize(int size)					void		버퍼 크기 지정
	
	setContentType(String type)				void		Content Type 지정
	
	getBufferSize(int size)					int			버퍼 크기 반환		
	

 --%>
</body>
</html>