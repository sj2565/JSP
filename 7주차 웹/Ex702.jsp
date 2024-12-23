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
	1. 내장객체 request
	- 클라이언트가 서버에게 정송하는 관련 정보를 처리하는 객체
	
	2. 인터페이스 javax.servlet.ServletRequest의 메소드
	
	==========================================================================================
	메소드								반환값		사용 용도
	==========================================================================================
	setCharacterEncoding(String env)	void		요청 페이지에 env의 인코딩 방법을 적용
	
	getParameter(String name)			String		name의 요청 인자 값을 반환. 없으면 null반환
													만일 값이 여러 개이면 첫 번째 값만 반환
	
	getParamterValues(String name)		String[]	지정한 name의 요청 인자 값을 문자열 배열로 반환
													없으면 null을 반환
													
	getParamterNames()					Enumeration	모든 인자의 이름을 Enumeration으로 반환
	
	getProtocol()						String		사용중인 프로토콜을 반환
	
	getRemoteAddr()						String		클라이언트의 IP 주소를 반환
	
	getRemoteName()						String		클라이언트의 호스트 이름을 반환
													
	getServerName()						String		요청된 서버의 호스트 이름을 반환
	
	getServerPort()						int			요청된 서버의 포트 번호를 반환			
 --%>
</body>
</html>