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
	1. 내장 객체
	- JSP 페이지의 스크립트릿과 표현에서 선언 없이 이용할 수 있는 객체 변수
	- 객체 변수 : request, response, out,  session, application, config, exception, page, pageContext
	
	===========================================================================================
	내장객체			소속 패키지				클래스 이름						사용용도
	===========================================================================================
	request			javax.servlet.http		<<interface>>			클라이언트의 요청에 의한 폼 양식
											HttpServletRequest		정보 처리
	response		javax.servlet.http		<<interface>>			클라이언트의 요청에 대한 응답	
											HttpServletResponse
	out				javax.servlet.jsp		<class>					출력 스트림
											JspWriter
	session			javax.servlet.http		<<interface>>			클라이언트에 대한 세션 정보 처리
											HttpSession
	application		javax.servlet			<<interface>>			웹 애플리케이션 정보 처리	
											ServletContext
	config			javax.servlet			<<interface>>			현재 JSP 페이지에 대한 환경 처리
											ServletConfig
	exception		java.lang				<<interface>>			예외처리를 위한 객체
											Throwable
	page			java.lang				<class>					현재 JSP 페이지에 대한 클래스 정보
											Object
	pageContext		javax.servlet.jsp		<class>					현재 JSP 페이지에 대한 페이지 컨텍스트
											PageContext	
	====================================================================================================
	
	2. JSP 내장 객체의 4가지 부류
	==========================================================================================================
	부류				java.lang			javax.servlet			javax.serevlet.http			javax.servlet.jsp		
	==========================================================================================================
	JSP 페이지에		page				config
	관련된 객체
	
	페이지 입출력에													request, response			out
	관련된 객체
	
	컨텍스트에 
	관련된 객체							application				session						pageContext
	
	예외에
	관련된 객체		exception
	==========================================================================================================
	
	3. 속성 처리 메소드의 종류
	* 속성 : 각각의 내장 객체가 존재하는 동안 JSP 페이지 사이에서 정보를 주고받거나 공유하는 사용
	
	===============================================================================================
	메소드							반환 유형					설명	
	===============================================================================================
	setAttribute(String name,		void					해당 내장 객체의 속성 이름이 name인 속성 값을
	Object value)											value로 저장합니다.	
	
	getAttribute(String name)		Object					해당 내장 객체의 속성 이름이 name인 속성 값을
															가져옵니다.
																
	removeAttribute(String name)	void					해당 내장 객체의 속성 이름이 name인 속성 삭제합니다.
	
	getAttributeNames()				java.utilEnumeration	해당 내장 객체의 모든 속성 이름을 가져옵니다.
															단, pageContext 내장 객체는 이 메소드를 제공하지
															않습니다.	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

 --%>
</body>
</html>