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
	1. request 메소드들(인터페이스 HTTPServletRequest)
	
	===============================================================================================
	메소드				반환값				사용용도
	===============================================================================================
		
	getCookies()		Cookie[]			클라이언트에 보내진 쿠키 배열을 반환		
	
	
	getQueryString()	String				URL에 추가된  Query 문자열을 반환
	
	
	getRequestURI()		STring				클라이언트가 요청한 URI 반환
											URI는 프로토콜, 서버이름, 포트번호를 제외한 서버의 컨텍스트와 파일의 문자열
		
	getSession()		HttpSession			현재의 세션을 반환, 세션이 없으면 새로 만들어 반환
	
	
	getMethod()			String				요청 방식이 get, post 중의 하나를 반환
	
	
	getHeader(String name)	String			설정한 name의 헤더 값을 가져옵니다.
	
	getHeader(String name)	Enumeration		설정한 name의 헤더 목록 값을 가져옵니다.
	
	getHeaderNames()		Enumeration		모든 헤더 이름을 가져옵니다.
		
 --%>
 
 
 
</body>
</html>